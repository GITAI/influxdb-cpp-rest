#pragma once

#include <string>
#include <vector>
#include <utility>
#include <type_traits>
#include "input_sanitizer.h"
#include <fmt/ostream.h>

namespace influxdb {

    namespace api {

        // https://docs.influxdata.com/influxdb/v1.0/write_protocols/line_protocol_tutorial/
        class key_value_pairs {
            fmt::MemoryWriter res;

        public:

            key_value_pairs() {};
            ~key_value_pairs() {};

            template<typename V>
            key_value_pairs(std::string const& key, V const& value) {
                add(key, value);
            }

            template<
                class V,
                typename std::enable_if<
                    std::is_integral<V>::value
                >::type* = nullptr
            >
                key_value_pairs& add(std::string const& key, V const& value) {
                influxdb::utility::throw_on_invalid_identifier(key);

                add_comma_if_necessary();

                res << key << "=" << value << "i";

                return *this;
            }

            template<
                class V,
                typename std::enable_if<
                std::is_floating_point<V>::value
                >::type* = nullptr
            >
                key_value_pairs& add(std::string const& key, V const& value) {
                influxdb::utility::throw_on_invalid_identifier(key);

                add_comma_if_necessary();

                res << key << "=" << value;

                return *this;
            }

            key_value_pairs& add(std::string const& key, std::string const& value) {
                influxdb::utility::throw_on_invalid_identifier(key);

                add_comma_if_necessary();

                res << key << "=\"" << value << "\"";

                return *this;
            }

            inline std::string get() const {
                return res.str();
            }

            inline bool empty() const {
                return !res.size();
            }

        private:
            inline void add_comma_if_necessary() {
                if (!this->empty())
                    res << ",";
            }
        };

        /// simplest, probably slow implementation
        class line {
            fmt::MemoryWriter res;

        public:
            line() {};
            ~line() {};

            template<typename TMap>
            inline line(std::string const& measurement, TMap const& tags, TMap const& values) {
                influxdb::utility::throw_on_invalid_identifier(measurement);

                res << measurement;
                if (!tags.empty()) {
                    res << "," << tags.get();
                }

                if (!values.empty()) {
                    res << " " << values.get();
                }
            }

        public:
            inline std::string get() const {
                return res.str();
            }
        };

    }
}