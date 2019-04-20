%module formats
%{
#include <bitcoin/bitcoin.hpp>
#include <bitcoin/system_formats.hpp>
%}

%import "bitcoin/bitcoin/compat.h"
%import "bitcoin/bitcoin/compat.hpp"
%import "bitcoin/bitcoin/define.hpp"

%import "system-ext.i"
//%import "system-ext-typemap.i"

%import "system-math-ext.i"
//%import "system-math-ext-typemap.i"

%import "system-utility-ext.i"
//%import "system-utility-ext-typemap.i"

//%import "p_u_long_long.i"
//%apply unsigned long long *OUTVALUE { uint64_t& out };
//%apply unsigned long long *OUTVALUE { uint64_t& satoshi };
//%apply unsigned long long *OUTVALUE { uint64_t& out };
//%apply unsigned long long *OUTVALUE { uint64_t& satoshi };

//%feature("director") Example;

//%apply const char *string {const char (&string)[2 * hash_size + 1]};

//%ignore hash_literal(const char (&string)[2 * hash_size + 1]);

//%include <p_std_string.i>
//%apply std::string &INOUT { std::string& out };
//%apply std::string &INOUT { std::string& in };

//%apply (char *STRING, size_t LENGTH) { (char *string, size_t Size) };

%import "bitcoin/bitcoin/math/hash.hpp"
%import "bitcoin/bitcoin/formats/base_10.hpp"
%import "bitcoin/bitcoin/formats/base_16.hpp"
%import "bitcoin/bitcoin/formats/base_32.hpp"
%import "bitcoin/bitcoin/formats/base_58.hpp"
%import "bitcoin/bitcoin/formats/base_64.hpp"
%import "bitcoin/bitcoin/formats/base_85.hpp"

%import "bitcoin/p_std_string.hpp"

%include "bitcoin/formats_base_10.hpp"
%include "bitcoin/formats_base_16.hpp"
%include "bitcoin/formats_base_32.hpp"
%include "bitcoin/formats_base_58.hpp"
%include "bitcoin/formats_base_64.hpp"
%include "bitcoin/formats_base_85.hpp"


//%inline %{
//namespace libbitcoin {

//const char (*new_char2hash_size_1())[2 * hash_size + 1] {
//  char (&string)[2 * hash_size + 1] = malloc(char (&)[2 * hash_size + 1]);
//  string = (char (*)[2 * hash_size + 1]) malloc((2 * hash_size + 1)*sizeof(char));
//  return &string;
//}

//void free_char2hash_size_1(const char (&string)[2 * hash_size + 1]) {
//  free(*string);
//  free(string);
//}
//void set_char2hash_size_1(const char (&string)[2 * hash_size + 1], int i, char v) {
//  string[i] = v;
//}
//void set_char2hash_size_1(const char (&string)[2 * hash_size + 1], char *src, size_t length) {
//  int i;
//  for (i=0; i<2 * hash_size + 1; i++) {
//    string[i] = src[i];
//}
//char get_char2hash_size_1(const char (&string)[2 * hash_size + 1], int i) {
//  return string[i];
//}
//char* get_char2hash_size_1(const char (&string)[2 * hash_size + 1]) {
//  return string;
//}

//hash_digest hash_literal(const char *string)
//{
//    hash_digest out;
//    DEBUG_ONLY(const auto success =) decode_base16_private(out.data(),
//        out.size(), string);
//    BITCOIN_ASSERT(success);
//    std::reverse(out.begin(), out.end());
//    return out;
//}

//std::vector<unsigned char> base16_literal(char *string, size_t Size)
//{
//    std::vector<unsigned char> out = new std::vector<unsigned char>((Size - 1) / 2);
//    DEBUG_ONLY(const auto success =) decode_base16_private(out.data(),
//        out.size(), string);
//    BITCOIN_ASSERT(success);
//    return out;
//}

//}
//%}
