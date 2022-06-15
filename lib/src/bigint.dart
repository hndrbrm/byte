// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

export 'dart:typed_data' show Endian;

List<int> bigIntToInts8Little(BigInt input, int size) {
  final List<int> result = List.filled(size, 0x00);

  BigInt ff = BigInt.from(0xff);

  for (int i = 0; i < size; i++) {
    final int byte = (input & ff).toInt();
    result[i] = byte;
    input >>= 8;
  }

  return result;
}
List<int> bigIntNToInts8Little(BigInt input) {
  assert(!input.isNegative);

  final int size = (input.bitLength + 7) >> 3;
  return bigIntToInts8Little(input, size);
}
List<int> bigInt64ToInts8Little(BigInt input) {
  assert(!input.isNegative);
  assert(input.bitLength <= 64);

  final List<int> result = List.filled(8, 0x00);

  BigInt ff = BigInt.from(0xff);

  result[0] = (input & ff).toInt();
  input >>= 8;
  result[1] = (input & ff).toInt();
  input >>= 8;
  result[2] = (input & ff).toInt();
  input >>= 8;
  result[3] = (input & ff).toInt();
  input >>= 8;
  result[4] = (input & ff).toInt();
  input >>= 8;
  result[5] = (input & ff).toInt();
  input >>= 8;
  result[6] = (input & ff).toInt();
  input >>= 8;
  result[7] = input.toInt();

  return result;
}
List<int> bigInt128ToInts8Little(BigInt input) {
  assert(!input.isNegative);
  assert(input.bitLength <= 128);

  final List<int> result = List.filled(16, 0x00);

  BigInt ff = BigInt.from(0xff);

  result[0] = (input & ff).toInt();
  input >>= 8;
  result[1] = (input & ff).toInt();
  input >>= 8;
  result[2] = (input & ff).toInt();
  input >>= 8;
  result[3] = (input & ff).toInt();
  input >>= 8;
  result[4] = (input & ff).toInt();
  input >>= 8;
  result[5] = (input & ff).toInt();
  input >>= 8;
  result[6] = (input & ff).toInt();
  input >>= 8;
  result[7] = (input & ff).toInt();
  input >>= 8;
  result[8] = (input & ff).toInt();
  input >>= 8;
  result[9] = (input & ff).toInt();
  input >>= 8;
  result[10] = (input & ff).toInt();
  input >>= 8;
  result[11] = (input & ff).toInt();
  input >>= 8;
  result[12] = (input & ff).toInt();
  input >>= 8;
  result[13] = (input & ff).toInt();
  input >>= 8;
  result[14] = (input & ff).toInt();
  input >>= 8;
  result[15] = input.toInt();

  return result;
}
List<int> bigInt256ToInts8Little(BigInt input) {
  assert(!input.isNegative);
  assert(input.bitLength <= 256);

  final List<int> result = List.filled(32, 0x00);

  BigInt ff = BigInt.from(0xff);

  result[0] = (input & ff).toInt();
  input >>= 8;
  result[1] = (input & ff).toInt();
  input >>= 8;
  result[2] = (input & ff).toInt();
  input >>= 8;
  result[3] = (input & ff).toInt();
  input >>= 8;
  result[4] = (input & ff).toInt();
  input >>= 8;
  result[5] = (input & ff).toInt();
  input >>= 8;
  result[6] = (input & ff).toInt();
  input >>= 8;
  result[7] = (input & ff).toInt();
  input >>= 8;
  result[8] = (input & ff).toInt();
  input >>= 8;
  result[9] = (input & ff).toInt();
  input >>= 8;
  result[10] = (input & ff).toInt();
  input >>= 8;
  result[11] = (input & ff).toInt();
  input >>= 8;
  result[12] = (input & ff).toInt();
  input >>= 8;
  result[13] = (input & ff).toInt();
  input >>= 8;
  result[14] = (input & ff).toInt();
  input >>= 8;
  result[15] = (input & ff).toInt();
  input >>= 8;
  result[16] = (input & ff).toInt();
  input >>= 8;
  result[17] = (input & ff).toInt();
  input >>= 8;
  result[18] = (input & ff).toInt();
  input >>= 8;
  result[19] = (input & ff).toInt();
  input >>= 8;
  result[20] = (input & ff).toInt();
  input >>= 8;
  result[21] = (input & ff).toInt();
  input >>= 8;
  result[22] = (input & ff).toInt();
  input >>= 8;
  result[23] = (input & ff).toInt();
  input >>= 8;
  result[24] = (input & ff).toInt();
  input >>= 8;
  result[25] = (input & ff).toInt();
  input >>= 8;
  result[26] = (input & ff).toInt();
  input >>= 8;
  result[27] = (input & ff).toInt();
  input >>= 8;
  result[28] = (input & ff).toInt();
  input >>= 8;
  result[29] = (input & ff).toInt();
  input >>= 8;
  result[30] = (input & ff).toInt();
  input >>= 8;
  result[31] = input.toInt();

  return result;
}

List<int> bigIntToInts8Big(BigInt input, int size) {
  final List<int> result = List.filled(size, 0x00);

  BigInt ff = BigInt.from(0xff);

  for (int i = size - 1; i >= 0; i--) {
    final int byte = (input & ff).toInt();
    result[i] = byte;
    input >>= 8;
  }

  return result;
}
List<int> bigIntNToInts8Big(BigInt input) {
  assert(!input.isNegative);

  final int size = (input.bitLength + 7) >> 3;
  return bigIntToInts8Big(input, size);
}
List<int> bigInt64ToInts8Big(BigInt input) {
  assert(!input.isNegative);
  assert(input.bitLength <= 64);

  final List<int> result = List.filled(8, 0x00);

  BigInt ff = BigInt.from(0xff);

  result[7] = (input & ff).toInt();
  input >>= 8;
  result[6] = (input & ff).toInt();
  input >>= 8;
  result[5] = (input & ff).toInt();
  input >>= 8;
  result[4] = (input & ff).toInt();
  input >>= 8;
  result[3] = (input & ff).toInt();
  input >>= 8;
  result[2] = (input & ff).toInt();
  input >>= 8;
  result[1] = (input & ff).toInt();
  input >>= 8;
  result[0] = input.toInt();

  return result;
}
List<int> bigInt128ToInts8Big(BigInt input) {
  assert(!input.isNegative);
  assert(input.bitLength <= 128);

  final List<int> result = List.filled(16, 0x00);

  BigInt ff = BigInt.from(0xff);

  result[15] = (input & ff).toInt();
  input >>= 8;
  result[14] = (input & ff).toInt();
  input >>= 8;
  result[13] = (input & ff).toInt();
  input >>= 8;
  result[12] = (input & ff).toInt();
  input >>= 8;
  result[11] = (input & ff).toInt();
  input >>= 8;
  result[10] = (input & ff).toInt();
  input >>= 8;
  result[9] = (input & ff).toInt();
  input >>= 8;
  result[8] = (input & ff).toInt();
  input >>= 8;
  result[7] = (input & ff).toInt();
  input >>= 8;
  result[6] = (input & ff).toInt();
  input >>= 8;
  result[5] = (input & ff).toInt();
  input >>= 8;
  result[4] = (input & ff).toInt();
  input >>= 8;
  result[3] = (input & ff).toInt();
  input >>= 8;
  result[2] = (input & ff).toInt();
  input >>= 8;
  result[1] = (input & ff).toInt();
  input >>= 8;
  result[0] = input.toInt();

  return result;
}
List<int> bigInt256ToInts8Big(BigInt input) {
  assert(!input.isNegative);
  assert(input.bitLength <= 256);

  final List<int> result = List.filled(32, 0x00);

  BigInt ff = BigInt.from(0xff);

  result[31] = (input & ff).toInt();
  input >>= 8;
  result[30] = (input & ff).toInt();
  input >>= 8;
  result[29] = (input & ff).toInt();
  input >>= 8;
  result[28] = (input & ff).toInt();
  input >>= 8;
  result[27] = (input & ff).toInt();
  input >>= 8;
  result[26] = (input & ff).toInt();
  input >>= 8;
  result[25] = (input & ff).toInt();
  input >>= 8;
  result[24] = (input & ff).toInt();
  input >>= 8;
  result[23] = (input & ff).toInt();
  input >>= 8;
  result[22] = (input & ff).toInt();
  input >>= 8;
  result[21] = (input & ff).toInt();
  input >>= 8;
  result[20] = (input & ff).toInt();
  input >>= 8;
  result[19] = (input & ff).toInt();
  input >>= 8;
  result[18] = (input & ff).toInt();
  input >>= 8;
  result[17] = (input & ff).toInt();
  input >>= 8;
  result[16] = (input & ff).toInt();
  input >>= 8;
  result[15] = (input & ff).toInt();
  input >>= 8;
  result[14] = (input & ff).toInt();
  input >>= 8;
  result[13] = (input & ff).toInt();
  input >>= 8;
  result[12] = (input & ff).toInt();
  input >>= 8;
  result[11] = (input & ff).toInt();
  input >>= 8;
  result[10] = (input & ff).toInt();
  input >>= 8;
  result[9] = (input & ff).toInt();
  input >>= 8;
  result[8] = (input & ff).toInt();
  input >>= 8;
  result[7] = (input & ff).toInt();
  input >>= 8;
  result[6] = (input & ff).toInt();
  input >>= 8;
  result[5] = (input & ff).toInt();
  input >>= 8;
  result[4] = (input & ff).toInt();
  input >>= 8;
  result[3] = (input & ff).toInt();
  input >>= 8;
  result[2] = (input & ff).toInt();
  input >>= 8;
  result[1] = (input & ff).toInt();
  input >>= 8;
  result[0] = input.toInt();

  return result;
}

List<int> bigIntToInts8(BigInt input, int size, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? bigIntToInts8Little(input, size)
    : bigIntToInts8Big(input, size);
}
List<int> bigIntNToInts8(BigInt input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? bigIntNToInts8Little(input)
    : bigIntNToInts8Big(input);
}
List<int> bigInt64ToInts8(BigInt input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? bigInt64ToInts8Little(input)
    : bigInt64ToInts8Big(input);
}
List<int> bigInt128ToInts8(BigInt input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? bigInt128ToInts8Little(input)
    : bigInt128ToInts8Big(input);
}
List<int> bigInt256ToInts8(BigInt input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? bigInt256ToInts8Little(input)
    : bigInt256ToInts8Big(input);
}

BigInt ints8ToBigIntLittle(List<int> ints, int start, int end) {
  assert(0 <= start && start <= end && end <= ints.length);

  BigInt result = BigInt.zero;

  for (int i = end - 1; i >= start; i--) {
    result <<= 8;
    final int byte = ints[i];
    result |= BigInt.from(byte);
  }

  return result;
}
BigInt ints8ToBigIntNLittle(List<int> ints, [ int offset = 0 ]) {
  return ints8ToBigIntLittle(ints, offset, ints.length);
}
BigInt ints8ToBigInt64Little(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length >= offset + 8);
  assert(ints[0].bitLength <= 8);
  assert(ints[1].bitLength <= 8);
  assert(ints[2].bitLength <= 8);
  assert(ints[3].bitLength <= 8);
  assert(ints[4].bitLength <= 8);
  assert(ints[5].bitLength <= 8);
  assert(ints[6].bitLength <= 8);
  assert(ints[7].bitLength <= 8);

  BigInt result = BigInt.from(ints[offset + 7]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 6]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 5]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 4]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 3]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 2]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 1]);
  result <<= 8;
  result |= BigInt.from(ints[offset]);

  return result;
}
BigInt ints8ToBigInt128Little(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length >= offset + 16);
  assert(ints[0].bitLength <= 8);
  assert(ints[1].bitLength <= 8);
  assert(ints[2].bitLength <= 8);
  assert(ints[3].bitLength <= 8);
  assert(ints[4].bitLength <= 8);
  assert(ints[5].bitLength <= 8);
  assert(ints[6].bitLength <= 8);
  assert(ints[7].bitLength <= 8);
  assert(ints[8].bitLength <= 8);
  assert(ints[9].bitLength <= 8);
  assert(ints[10].bitLength <= 8);
  assert(ints[11].bitLength <= 8);
  assert(ints[12].bitLength <= 8);
  assert(ints[13].bitLength <= 8);
  assert(ints[14].bitLength <= 8);
  assert(ints[15].bitLength <= 8);

  BigInt result = BigInt.from(ints[offset + 15]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 14]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 13]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 12]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 11]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 10]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 9]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 8]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 7]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 6]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 5]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 4]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 3]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 2]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 1]);
  result <<= 8;
  result |= BigInt.from(ints[offset]);

  return result;
}
BigInt ints8ToBigInt256Little(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length >= 32);
  assert(ints[0].bitLength <= 8);
  assert(ints[1].bitLength <= 8);
  assert(ints[2].bitLength <= 8);
  assert(ints[3].bitLength <= 8);
  assert(ints[4].bitLength <= 8);
  assert(ints[5].bitLength <= 8);
  assert(ints[6].bitLength <= 8);
  assert(ints[7].bitLength <= 8);
  assert(ints[8].bitLength <= 8);
  assert(ints[9].bitLength <= 8);
  assert(ints[10].bitLength <= 8);
  assert(ints[11].bitLength <= 8);
  assert(ints[12].bitLength <= 8);
  assert(ints[13].bitLength <= 8);
  assert(ints[14].bitLength <= 8);
  assert(ints[15].bitLength <= 8);
  assert(ints[16].bitLength <= 8);
  assert(ints[17].bitLength <= 8);
  assert(ints[18].bitLength <= 8);
  assert(ints[19].bitLength <= 8);
  assert(ints[20].bitLength <= 8);
  assert(ints[21].bitLength <= 8);
  assert(ints[22].bitLength <= 8);
  assert(ints[23].bitLength <= 8);
  assert(ints[24].bitLength <= 8);
  assert(ints[25].bitLength <= 8);
  assert(ints[26].bitLength <= 8);
  assert(ints[27].bitLength <= 8);
  assert(ints[28].bitLength <= 8);
  assert(ints[29].bitLength <= 8);
  assert(ints[30].bitLength <= 8);
  assert(ints[31].bitLength <= 8);

  BigInt result = BigInt.from(ints[offset + 31]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 30]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 29]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 28]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 27]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 26]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 25]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 24]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 23]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 22]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 21]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 20]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 19]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 18]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 17]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 16]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 15]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 14]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 13]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 12]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 11]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 10]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 9]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 8]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 7]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 6]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 5]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 4]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 3]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 2]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 1]);
  result <<= 8;
  result |= BigInt.from(ints[offset]);

  return result;
}

BigInt ints8ToBigIntBig(List<int> ints, int start, int end) {
  assert(0 <= start && start <= end && end <= ints.length);

  BigInt result = BigInt.zero;

  for (int i = start; i < end; i++) {
    result <<= 8;
    final int byte = ints[i];
    result |= BigInt.from(byte);
  }

  return result;
}
BigInt ints8ToBigIntNBig(List<int> ints, [ int offset = 0 ]) {
  return ints8ToBigIntBig(ints, offset, ints.length);
}
BigInt ints8ToBigInt64Big(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length >= offset + 8);
  assert(ints[0].bitLength <= 8);
  assert(ints[1].bitLength <= 8);
  assert(ints[2].bitLength <= 8);
  assert(ints[3].bitLength <= 8);
  assert(ints[4].bitLength <= 8);
  assert(ints[5].bitLength <= 8);
  assert(ints[6].bitLength <= 8);
  assert(ints[7].bitLength <= 8);

  BigInt result = BigInt.from(ints[offset]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 1]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 2]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 3]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 4]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 5]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 6]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 7]);

  return result;
}
BigInt ints8ToBigInt128Big(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length >= offset + 16);
  assert(ints[0].bitLength <= 8);
  assert(ints[1].bitLength <= 8);
  assert(ints[2].bitLength <= 8);
  assert(ints[3].bitLength <= 8);
  assert(ints[4].bitLength <= 8);
  assert(ints[5].bitLength <= 8);
  assert(ints[6].bitLength <= 8);
  assert(ints[7].bitLength <= 8);
  assert(ints[8].bitLength <= 8);
  assert(ints[9].bitLength <= 8);
  assert(ints[10].bitLength <= 8);
  assert(ints[11].bitLength <= 8);
  assert(ints[12].bitLength <= 8);
  assert(ints[13].bitLength <= 8);
  assert(ints[14].bitLength <= 8);
  assert(ints[15].bitLength <= 8);

  BigInt result = BigInt.from(ints[offset]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 1]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 2]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 3]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 4]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 5]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 6]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 7]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 8]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 9]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 10]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 11]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 12]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 13]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 14]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 15]);

  return result;
}
BigInt ints8ToBigInt256Big(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length >= offset + 32);
  assert(ints[offset].bitLength <= 8);
  assert(ints[offset + 1].bitLength <= 8);
  assert(ints[offset + 2].bitLength <= 8);
  assert(ints[offset + 3].bitLength <= 8);
  assert(ints[offset + 4].bitLength <= 8);
  assert(ints[offset + 5].bitLength <= 8);
  assert(ints[offset + 6].bitLength <= 8);
  assert(ints[offset + 7].bitLength <= 8);
  assert(ints[offset + 8].bitLength <= 8);
  assert(ints[offset + 9].bitLength <= 8);
  assert(ints[offset + 10].bitLength <= 8);
  assert(ints[offset + 11].bitLength <= 8);
  assert(ints[offset + 12].bitLength <= 8);
  assert(ints[offset + 13].bitLength <= 8);
  assert(ints[offset + 14].bitLength <= 8);
  assert(ints[offset + 15].bitLength <= 8);
  assert(ints[offset + 16].bitLength <= 8);
  assert(ints[offset + 17].bitLength <= 8);
  assert(ints[offset + 18].bitLength <= 8);
  assert(ints[offset + 19].bitLength <= 8);
  assert(ints[offset + 20].bitLength <= 8);
  assert(ints[offset + 21].bitLength <= 8);
  assert(ints[offset + 22].bitLength <= 8);
  assert(ints[offset + 23].bitLength <= 8);
  assert(ints[offset + 24].bitLength <= 8);
  assert(ints[offset + 25].bitLength <= 8);
  assert(ints[offset + 26].bitLength <= 8);
  assert(ints[offset + 27].bitLength <= 8);
  assert(ints[offset + 28].bitLength <= 8);
  assert(ints[offset + 29].bitLength <= 8);
  assert(ints[offset + 30].bitLength <= 8);
  assert(ints[offset + 31].bitLength <= 8);

  BigInt result = BigInt.from(ints[offset]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 1]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 2]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 3]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 4]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 5]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 6]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 7]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 8]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 9]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 10]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 11]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 12]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 13]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 14]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 15]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 16]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 17]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 18]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 19]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 20]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 21]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 22]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 23]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 24]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 25]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 26]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 27]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 28]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 29]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 30]);
  result <<= 8;
  result |= BigInt.from(ints[offset + 31]);

  return result;
}

BigInt ints8ToBigInt(List<int> ints, int start, int end, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
      ? ints8ToBigIntLittle(ints, start, end)
      : ints8ToBigIntBig(ints, start, end);
}
BigInt ints8ToBigIntN(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToBigIntNLittle(ints, offset)
    : ints8ToBigIntNBig(ints, offset);
}
BigInt ints8ToBigInt64(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToBigInt64Little(ints, offset)
    : ints8ToBigInt64Big(ints, offset);
}
BigInt ints8ToBigInt128(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToBigInt128Little(ints, offset)
    : ints8ToBigInt128Big(ints, offset);
}
BigInt ints8ToBigInt256(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToBigInt256Little(ints, offset)
    : ints8ToBigInt256Big(ints, offset);
}

BigInt ints8ToBigIntLittleAndRemoved(List<int> ints, int start, int end) {
  final BigInt result = ints8ToBigIntLittle(ints, start, end);
  ints.removeRange(start, end);

  return result;
}
BigInt ints8ToBigIntNLittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final BigInt result = ints8ToBigIntLittleAndRemoved(ints, offset, ints.length);
  ints.removeRange(offset, ints.length);

  return result;
}
BigInt ints8ToBigInt64LittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final BigInt result = ints8ToBigInt64Little(ints, offset);
  ints.removeRange(offset, offset + 8);

  return result;
}
BigInt ints8ToBigInt128LittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final BigInt result = ints8ToBigInt128Little(ints, offset);
  ints.removeRange(offset, offset + 16);

  return result;
}
BigInt ints8ToBigInt256LittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final BigInt result = ints8ToBigInt256Little(ints, offset);
  ints.removeRange(offset, offset + 32);

  return result;
}

BigInt ints8ToBigIntBigAndRemoved(List<int> ints, int start, int end) {
  final BigInt result = ints8ToBigIntBig(ints, start, end);
  ints.removeRange(start, end);

  return result;
}
BigInt ints8ToBigIntNBigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final BigInt result = ints8ToBigIntBigAndRemoved(ints, offset, ints.length);
  ints.removeRange(offset, ints.length);

  return result;
}
BigInt ints8ToBigInt64BigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final BigInt result = ints8ToBigInt64Big(ints, offset);
  ints.removeRange(offset, offset + 8);

  return result;
}
BigInt ints8ToBigInt128BigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final BigInt result = ints8ToBigInt128Big(ints, offset);
  ints.removeRange(offset, offset + 16);

  return result;
}
BigInt ints8ToBigInt256BigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final BigInt result = ints8ToBigInt256Big(ints, offset);
  ints.removeRange(offset, offset + 32);

  return result;
}

BigInt ints8ToBigIntAndRemoved(List<int> ints, int start, int end, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? ints8ToBigIntLittleAndRemoved(ints, start, end)
    : ints8ToBigIntBigAndRemoved(ints, start, end);
}
BigInt ints8ToBigIntNAndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToBigIntNLittleAndRemoved(ints, offset)
    : ints8ToBigIntNBigAndRemoved(ints, offset);
}
BigInt ints8ToBigInt64AndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToBigInt64LittleAndRemoved(ints, offset)
    : ints8ToBigInt64BigAndRemoved(ints, offset);
}
BigInt ints8ToBigInt128AndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToBigInt128LittleAndRemoved(ints, offset)
    : ints8ToBigInt128BigAndRemoved(ints, offset);
}
BigInt ints8ToBigInt256AndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToBigInt256LittleAndRemoved(ints, offset)
    : ints8ToBigInt256BigAndRemoved(ints, offset);
}

extension BigIntToIntsExtension on BigInt {
  List<int> toInts8Little(int size) => bigIntToInts8Little(this, size);
  List<int> asBigIntNToInts8Little() => bigIntNToInts8Little(this);
  List<int> asBigInt64ToInts8Little() => bigInt64ToInts8Little(this);
  List<int> asBigInt128ToInts8Little() => bigInt128ToInts8Little(this);
  List<int> asBigInt256ToInts8Little() => bigInt256ToInts8Little(this);

  List<int> toInts8Big(int size) => bigIntToInts8Big(this, size);
  List<int> asBigIntNToInts8Big() => bigIntNToInts8Big(this);
  List<int> asBigInt64ToInts8Big() => bigInt64ToInts8Big(this);
  List<int> asBigInt128ToInts8Big() => bigInt128ToInts8Big(this);
  List<int> asBigInt256ToInts8Big() => bigInt256ToInts8Big(this);

  List<int> toInts8(int size, [ Endian endian = Endian.little ]) {
    return bigIntToInts8(this, size, endian);
  }
  List<int> asBigIntNToInts8([ Endian endian = Endian.little ]) {
    return bigIntNToInts8(this, endian);
  }
  List<int> asBigInt64ToInts8([ Endian endian = Endian.little ]) {
    return bigInt64ToInts8(this, endian);
  }
  List<int> asBigInt128ToInts8([ Endian endian = Endian.little ]) {
    return bigInt128ToInts8(this, endian);
  }
  List<int> asBigInt256ToInts8([ Endian endian = Endian.little ]) {
    return bigInt256ToInts8(this, endian);
  }
}

extension IntsToBigIntExtension on List<int> {
  BigInt asInts8ToBigIntLittle(int start, int end) {
    return ints8ToBigIntLittle(this, start, end);
  }
  BigInt asInts8ToBigIntNLittle([ int offset = 0 ]) {
    return ints8ToBigIntNLittle(this, offset);
  }
  BigInt asInts8ToBigInt64Little([ int offset = 0 ]) {
    return ints8ToBigInt64Little(this, offset);
  }
  BigInt asInts8ToBigInt128Little([ int offset = 0 ]) {
    return ints8ToBigInt128Little(this, offset);
  }
  BigInt asInts8ToBigInt256Little([ int offset = 0 ]) {
    return ints8ToBigInt256Little(this, offset);
  }

  BigInt asInts8ToBigIntBig(int start, int end) {
    return ints8ToBigIntBig(this, start, end);
  }
  BigInt asInts8ToBigIntNBig([ int offset = 0 ]) {
    return ints8ToBigIntNBig(this, offset);
  }
  BigInt asInts8ToBigInt64Big([ int offset = 0 ]) {
    return ints8ToBigInt64Big(this, offset);
  }
  BigInt asInts8ToBigInt128Big([ int offset = 0 ]) {
    return ints8ToBigInt128Big(this, offset);
  }
  BigInt asInts8ToBigInt256Big([ int offset = 0 ]) {
    return ints8ToBigInt256Big(this, offset);
  }

  BigInt asInts8ToBigInt(int start, int end, [ Endian endian = Endian.little ]) {
    return ints8ToBigInt(this, start, end, endian);
  }
  BigInt asInts8ToBigIntN({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToBigIntN(this, offset: offset, endian: endian);
  }
  BigInt asInts8ToBigInt64({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToBigInt64(this, offset: offset, endian: endian);
  }
  BigInt asInts8ToBigInt128({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToBigInt128(this, offset: offset, endian: endian);
  }
  BigInt asInts8ToBigInt256({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToBigInt256(this, offset: offset, endian: endian);
  }

  BigInt asInts8ToBigIntLittleAndRemoved(int start, int end) {
    return ints8ToBigIntLittleAndRemoved(this, start, end);
  }
  BigInt asInts8ToBigIntNLittleAndRemoved([ offset = 0 ]) {
    return ints8ToBigIntNLittleAndRemoved(this, offset);
  }
  BigInt asInts8ToBigInt64LittleAndRemoved([ int offset = 0 ]) {
    return ints8ToBigInt64LittleAndRemoved(this, offset);
  }
  BigInt asInts8ToBigInt128LittleAndRemoved([ int offset = 0 ]) {
    return ints8ToBigInt128LittleAndRemoved(this, offset);
  }
  BigInt asInts8ToBigInt256LittleAndRemoved([ int offset = 0 ]) {
    return ints8ToBigInt256LittleAndRemoved(this, offset);
  }

  BigInt asInts8ToBigIntBigAndRemoved(int start, int end) {
    return ints8ToBigIntBigAndRemoved(this, start, end);
  }
  BigInt asInts8ToBigIntNBigAndRemoved([ int offset = 0 ]) {
    return ints8ToBigIntNBigAndRemoved(this, offset);
  }
  BigInt asInts8ToBigInt64BigAndRemoved([ int offset = 0 ]) {
    return ints8ToBigInt64BigAndRemoved(this, offset);
  }
  BigInt asInts8ToBigInt128BigAndRemoved([ int offset = 0 ]) {
    return ints8ToBigInt128BigAndRemoved(this, offset);
  }
  BigInt asInts8ToBigInt256BigAndRemoved([ int offset = 0 ]) {
    return ints8ToBigInt256BigAndRemoved(this, offset);
  }

  BigInt asInts8ToBigIntAndRemoved(int start, int end, [ Endian endian = Endian.little ]) {
    return ints8ToBigIntAndRemoved(this, start, end, endian);
  }
  BigInt asInts8ToBigIntNAndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToBigIntNAndRemoved(this, offset: offset, endian: endian);
  }
  BigInt asInts8ToBigInt64AndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToBigInt64AndRemoved(this, offset: offset, endian: endian);
  }
  BigInt asInts8ToBigInt128AndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToBigInt128AndRemoved(this, offset: offset, endian: endian);
  }
  BigInt asInts8ToBigInt256AndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToBigInt256AndRemoved(this, offset: offset, endian: endian);
  }
}
