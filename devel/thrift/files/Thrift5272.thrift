namespace cpp thrift5272

// a minimal Thrift struct, to test Trift5272.cpp
struct Meta
{
  1: byte byte_type,  // keep using byte, even it'S just an alias for i8 (THRIFT-5153)
  2: i8   i8_type,
  3: i16  i16_type,
  4: i32  i32_type,
  5: i64  i64_type,
}
