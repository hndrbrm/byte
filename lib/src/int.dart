// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

export 'dart:typed_data' show Endian;

List<int> intToInts8Little(int input, int length) {
  final List<int> result = List.filled(length, 0x00);

  for (int i = 0; i < length; i++) {
    final int byte = input & 0xff;
    result[i] = byte;
    input >>= 8;
  }

  return result;
}
List<int> intNToInts8Little(int input) {
  final int size = (input.bitLength + 7) >> 3;
  return intToInts8Little(input, size);
}
List<int> int16ToInts8Little(int input) {
  assert((input | 0xffff) == 0xffff);

  final List<int> result = List.filled(2, 0x00);
  result[0] = input & 0xff;
  input >>= 8;
  result[1] = input;

  return result;
}
List<int> int24ToInts8Little(int input) {
  assert((input | 0xffffff) == 0xffffff);

  final List<int> result = List.filled(3, 0x00);
  result[0] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[2] = input;

  return result;
}
List<int> int32ToInts8Little(int input) {
  assert((input | 0xffffffff) == 0xffffffff);

  final List<int> result = List.filled(4, 0x00);
  result[0] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[3] = input;

  return result;
}
List<int> int40ToInts8Little(int input) {
  assert((input | 0xffffffffff) == 0xffffffffff);

  final List<int> result = List.filled(5, 0x00);
  result[0] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[3] = input & 0xff;
  input >>= 8;
  result[4] = input;

  return result;
}
List<int> int48ToInts8Little(int input) {
  assert((input | 0xffffffffffff) == 0xffffffffffff);

  final List<int> result = List.filled(6, 0x00);
  result[0] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[3] = input & 0xff;
  input >>= 8;
  result[4] = input & 0xff;
  input >>= 8;
  result[5] = input;

  return result;
}
List<int> int56ToInts8Little(int input) {
  assert((input | 0xffffffffffffff) == 0xffffffffffffff);

  final List<int> result = List.filled(7, 0x00);
  result[0] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[3] = input & 0xff;
  input >>= 8;
  result[4] = input & 0xff;
  input >>= 8;
  result[5] = input & 0xff;
  input >>= 8;
  result[6] = input;

  return result;
}
List<int> int64ToInts8Little(int input) {
  assert((input | 0xffffffffffffffff) == 0xffffffffffffffff);

  final List<int> result = List.filled(8, 0x00);
  result[0] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[3] = input & 0xff;
  input >>= 8;
  result[4] = input & 0xff;
  input >>= 8;
  result[5] = input & 0xff;
  input >>= 8;
  result[6] = input & 0xff;
  input >>= 8;
  result[7] = input & 0xff;

  return result;
}

List<int> intToInts8Big(int input, int size) {
  final List<int> result = List.filled(size, 0x00);

  for (int i = size - 1; i >= 0; i--) {
    final int byte = input & 0xff;
    result[i] = byte;
    input >>= 8;
  }

  return result;
}
List<int> intNToInts8Big(int input) {
  final int size = (input.bitLength + 7) >> 3;
  return intToInts8Big(input, size);
}
List<int> int16ToInts8Big(int input) {
  assert((input | 0xffff) == 0xffff);

  final List<int> result = List.filled(2, 0x00);
  result[1] = input & 0xff;
  input >>= 8;
  result[0] = input;

  return result;
}
List<int> int24ToInts8Big(int input) {
  assert((input | 0xffffff) == 0xffffff);

  final List<int> result = List.filled(3, 0x00);
  result[2] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[0] = input;

  return result;
}
List<int> int32ToInts8Big(int input) {
  assert((input | 0xffffffff) == 0xffffffff);

  final List<int> result = List.filled(4, 0x00);
  result[3] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[0] = input;

  return result;
}
List<int> int40ToInts8Big(int input) {
  assert((input | 0xffffffffff) == 0xffffffffff);

  final List<int> result = List.filled(5, 0x00);
  result[4] = input & 0xff;
  input >>= 8;
  result[3] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[0] = input;

  return result;
}
List<int> int48ToInts8Big(int input) {
  assert((input | 0xffffffffffff) == 0xffffffffffff);

  final List<int> result = List.filled(6, 0x00);
  result[5] = input & 0xff;
  input >>= 8;
  result[4] = input & 0xff;
  input >>= 8;
  result[3] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[0] = input;

  return result;
}
List<int> int56ToInts8Big(int input) {
  assert((input | 0xffffffffffffff) == 0xffffffffffffff);

  final List<int> result = List.filled(7, 0x00);
  result[6] = input & 0xff;
  input >>= 8;
  result[5] = input & 0xff;
  input >>= 8;
  result[4] = input & 0xff;
  input >>= 8;
  result[3] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[0] = input;

  return result;
}
List<int> int64ToInts8Big(int input) {
  assert((input | 0xffffffffffffffff) == 0xffffffffffffffff);

  final List<int> result = List.filled(8, 0x00);
  result[7] = input & 0xff;
  input >>= 8;
  result[6] = input & 0xff;
  input >>= 8;
  result[5] = input & 0xff;
  input >>= 8;
  result[4] = input & 0xff;
  input >>= 8;
  result[3] = input & 0xff;
  input >>= 8;
  result[2] = input & 0xff;
  input >>= 8;
  result[1] = input & 0xff;
  input >>= 8;
  result[0] = input & 0xff;

  return result;
}

List<int> intToInts8(int input, int size, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? intToInts8Little(input, size)
    : intToInts8Big(input, size);
}
List<int> intNToInts8(int input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? intNToInts8Little(input)
    : intNToInts8Big(input);
}
List<int> int16ToInts8(int input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? int16ToInts8Little(input)
    : int16ToInts8Big(input);
}
List<int> int24ToInts8(int input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? int24ToInts8Little(input)
    : int24ToInts8Big(input);
}
List<int> int32ToInts8(int input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? int32ToInts8Little(input)
    : int32ToInts8Big(input);
}
List<int> int40ToInts8(int input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? int40ToInts8Little(input)
    : int40ToInts8Big(input);
}
List<int> int48ToInts8(int input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? int48ToInts8Little(input)
    : int48ToInts8Big(input);
}
List<int> int56ToInts8(int input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? int56ToInts8Little(input)
    : int56ToInts8Big(input);
}
List<int> int64ToInts8(int input, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? int64ToInts8Little(input)
    : int64ToInts8Big(input);
}

int ints8ToIntLittle(List<int> ints, int start, int end) {
  assert(0 <= start && start <= end && end <= ints.length);

  int result = 0;

  for (int i = end - 1; i >= start; i--) {
    result <<= 8;
    result |= ints[i];
  }

  return result;
}
int ints8ToIntNLittle(List<int> ints, [ int offset = 0 ]) {
  return ints8ToIntLittle(ints, offset, ints.length);
}
int ints8ToInt16Little(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length - offset >= 2);
  assert(ints[offset].bitLength <= 8);
  assert(ints[offset + 1].bitLength <= 8);

  return ints[offset + 1] << 8 | ints[offset];
}
int ints8ToInt24Little(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length - offset >= 3);
  assert(ints[offset].bitLength <= 8);
  assert(ints[offset + 1].bitLength <= 8);
  assert(ints[offset + 2].bitLength <= 8);

  return ints[offset + 2] << 16 | ints[offset + 1] << 8 | ints[offset];
}
int ints8ToInt32Little(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length - offset >= 4);
  assert(ints[offset].bitLength <= 8);
  assert(ints[offset + 1].bitLength <= 8);
  assert(ints[offset + 2].bitLength <= 8);
  assert(ints[offset + 3].bitLength <= 8);

  return ints[offset + 3] << 24 | ints[offset + 2] << 16 | ints[offset + 1] << 8 | ints[offset];
}

int ints8ToIntBig(List<int> ints, int start, int end) {
  assert(0 <= start && start <= end && end <= ints.length);

  int result = 0;

  for (int i = start; i < end; i++) {
    result <<= 8;
    result |= ints[i];
  }

  return result;
}
int ints8ToIntNBig(List<int> ints, [ int offset = 0 ]) {
  return ints8ToIntBig(ints, offset, ints.length);
}
int ints8ToInt16Big(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length - offset >= 2);
  assert(ints[offset].bitLength <= 8);
  assert(ints[offset + 1].bitLength <= 8);

  return ints[offset] << 8 | ints[offset + 1];
}
int ints8ToInt24Big(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length - offset >= 3);
  assert(ints[offset].bitLength <= 8);
  assert(ints[offset + 1].bitLength <= 8);
  assert(ints[offset + 2].bitLength <= 8);

  return ints[offset] << 16 | ints[offset + 1] << 8 | ints[offset + 2];
}
int ints8ToInt32Big(List<int> ints, [ int offset = 0 ]) {
  assert(ints.length - offset >= 4);
  assert(ints[offset].bitLength <= 8);
  assert(ints[offset + 1].bitLength <= 8);
  assert(ints[offset + 2].bitLength <= 8);
  assert(ints[offset + 3].bitLength <= 8);

  return ints[offset] << 24 | ints[offset + 1] << 16 | ints[offset + 2] << 8 | ints[offset + 3];
}

int ints8ToInt(List<int> ints, int start, int end, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? ints8ToIntLittle(ints, start, end)
    : ints8ToIntBig(ints, start, end);
}
int ints8ToIntN(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToIntNLittle(ints, offset)
    : ints8ToIntNBig(ints, offset);
}
int ints8ToInt16(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToInt16Little(ints, offset)
    : ints8ToInt16Big(ints, offset);
}
int ints8ToInt24(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToInt24Little(ints, offset)
    : ints8ToInt24Big(ints, offset);
}
int ints8ToInt32(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToInt32Little(ints, offset)
    : ints8ToInt32Big(ints, offset);
}

int ints8ToIntLittleAndRemoved(List<int> ints, int start, int end) {
  final int result = ints8ToIntLittle(ints, start, end);
  ints.removeRange(start, end);

  return result;
}
int ints8ToIntNLittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  return ints8ToIntLittleAndRemoved(ints, offset, ints.length);
}
int ints8ToInt16LittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final int result = ints8ToInt16Little(ints, offset);
  ints.removeRange(offset, offset + 2);

  return result;
}
int ints8ToInt24LittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final int result = ints8ToInt24Little(ints, offset);
  ints.removeRange(offset, offset + 3);

  return result;
}
int ints8ToInt32LittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final int result = ints8ToInt32Little(ints, offset);
  ints.removeRange(offset, offset + 4);

  return result;
}

int ints8ToIntBigAndRemoved(List<int> ints, int start, int end) {
  final int result = ints8ToIntBig(ints, start, end);
  ints.removeRange(start, end);

  return result;
}
int ints8ToIntNBigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  return ints8ToIntBigAndRemoved(ints, offset, ints.length);
}
int ints8ToInt16BigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final int result = ints8ToInt16Big(ints, offset);
  ints.removeRange(offset, offset + 2);

  return result;
}
int ints8ToInt24BigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final int result = ints8ToInt24Big(ints, offset);
  ints.removeRange(offset, offset + 3);

  return result;
}
int ints8ToInt32BigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final int result = ints8ToInt32Big(ints, offset);
  ints.removeRange(offset, offset + 4);

  return result;
}

int ints8ToIntAndRemoved(List<int> ints, int start, int end, [ Endian endian = Endian.little ]) {
  return endian == Endian.little
    ? ints8ToIntLittleAndRemoved(ints, start, end)
    : ints8ToIntBigAndRemoved(ints, start, end);
}
int ints8ToIntNAndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToIntNLittleAndRemoved(ints, offset)
    : ints8ToIntNBigAndRemoved(ints, offset);
}
int ints8ToInt16AndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToInt16LittleAndRemoved(ints, offset)
    : ints8ToInt16BigAndRemoved(ints, offset);
}
int ints8ToInt24AndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToInt24LittleAndRemoved(ints, offset)
    : ints8ToInt24BigAndRemoved(ints, offset);
}
int ints8ToInt32AndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToInt32LittleAndRemoved(ints, offset)
    : ints8ToInt32BigAndRemoved(ints, offset);
}

extension IntTointsExtension on int {
  List<int> toInts8Little(int size) => intToInts8Little(this, size);
  List<int> asIntNToInts8Little() => intNToInts8Little(this);
  List<int> asInt16ToInts8Little() => int16ToInts8Little(this);
  List<int> asInt24ToInts8Little() => int24ToInts8Little(this);
  List<int> asInt32ToInts8Little() => int32ToInts8Little(this);
  List<int> asInt40ToInts8Little() => int40ToInts8Little(this);
  List<int> asInt48ToInts8Little() => int48ToInts8Little(this);
  List<int> asInt56ToInts8Little() => int56ToInts8Little(this);
  List<int> asInt64ToInts8Little() => int64ToInts8Little(this);

  List<int> toInts8Big(int size) => intToInts8Big(this, size);
  List<int> asIntNToInts8Big() => intNToInts8Big(this);
  List<int> asInt16ToInts8Big() => int16ToInts8Big(this);
  List<int> asInt24ToInts8Big() => int24ToInts8Big(this);
  List<int> asInt32ToInts8Big() => int32ToInts8Big(this);
  List<int> asInt40ToInts8Big() => int40ToInts8Big(this);
  List<int> asInt48ToInts8Big() => int48ToInts8Big(this);
  List<int> asInt56ToInts8Big() => int56ToInts8Big(this);
  List<int> asInt64ToInts8Big() => int64ToInts8Big(this);

  List<int> toInts8(int size, [ Endian endian = Endian.little ]) => intToInts8(this, size, endian);
  List<int> asIntNToInts8([ Endian endian = Endian.little ]) => intNToInts8(this, endian);
  List<int> asInt16ToInts8([ Endian endian = Endian.little ]) => int16ToInts8(this, endian);
  List<int> asInt24ToInts8([ Endian endian = Endian.little ]) => int24ToInts8(this, endian);
  List<int> asInt32ToInts8([ Endian endian = Endian.little ]) => int32ToInts8(this, endian);
  List<int> asInt40ToInts8([ Endian endian = Endian.little ]) => int40ToInts8(this, endian);
  List<int> asInt48ToInts8([ Endian endian = Endian.little ]) => int48ToInts8(this, endian);
  List<int> asInt56ToInts8([ Endian endian = Endian.little ]) => int56ToInts8(this, endian);
  List<int> asInt64ToInts8([ Endian endian = Endian.little ]) => int64ToInts8(this, endian);
}

extension IntsToIntExtension on List<int> {
  int asInts8ToIntLittle(int start, int end) => ints8ToIntLittle(this, start, end);
  int asInts8ToIntNLittle([ int offset = 0 ]) => ints8ToIntNLittle(this, offset);
  int asInts8ToInt16Little([ int offset = 0 ]) => ints8ToInt16Little(this, offset);
  int asInts8ToInt24Little([ int offset = 0 ]) => ints8ToInt24Little(this, offset);
  int asInts8ToInt32Little([ int offset = 0 ]) => ints8ToInt32Little(this, offset);

  int asInts8ToIntBig(int start, int end) => ints8ToIntBig(this, start, end);
  int asInts8ToIntNBig([ int offset = 0 ]) => ints8ToIntNBig(this, offset);
  int asInts8ToInt16Big([ int offset = 0 ]) => ints8ToInt16Big(this, offset);
  int asInts8ToInt24Big([ int offset = 0 ]) => ints8ToInt24Big(this, offset);
  int asInts8ToInt32Big([ int offset = 0 ]) => ints8ToInt32Big(this, offset);

  int asInts8ToInt(int start, int end, [ Endian endian = Endian.little ]) {
    return ints8ToInt(this, start, end, endian);
  }
  int asInts8ToIntN({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToIntN(this, offset: offset, endian: endian);
  }
  int asInts8ToInt16({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToInt16(this, offset: offset, endian: endian);
  }
  int asInts8ToInt24({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToInt24(this, offset: offset, endian: endian);
  }
  int asInts8ToInt32({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToInt32(this, offset: offset, endian: endian);
  }

  int asInts8ToIntLittleAndRemoved(int start, int end) {
    return ints8ToIntLittleAndRemoved(this, start, end);
  }
  int asInts8ToIntNLittleAndRemoved([ int offset = 0 ]) {
    return ints8ToIntNLittleAndRemoved(this, offset);
  }
  int asInts8ToInt16LittleAndRemoved([ int offset = 0 ]) {
    return ints8ToInt16LittleAndRemoved(this, offset);
  }
  int asInts8ToInt24LittleAndRemoved([ int offset = 0 ]) {
    return ints8ToInt24LittleAndRemoved(this, offset);
  }
  int asInts8ToInt32LittleAndRemoved([ int offset = 0 ]) {
    return ints8ToInt32LittleAndRemoved(this, offset);
  }

  int asInts8ToIntBigAndRemoved(int start, int end) {
    return ints8ToIntBigAndRemoved(this, start, end);
  }
  int asInts8ToIntNBigAndRemoved([ int offset = 0 ]) {
    return ints8ToIntNBigAndRemoved(this, offset);
  }
  int asInts8ToInt16BigAndRemoved([ int offset = 0 ]) {
    return ints8ToInt16BigAndRemoved(this, offset);
  }
  int asInts8ToInt24BigAndRemoved([ int offset = 0 ]) {
    return ints8ToInt24BigAndRemoved(this, offset);
  }
  int asInts8ToInt32BigAndRemoved([ int offset = 0 ]) {
    return ints8ToInt32BigAndRemoved(this, offset);
  }

  int asInts8ToIntAndRemoved(int start, int end, [ Endian endian = Endian.little ]) {
    return ints8ToIntAndRemoved(this, start, end, endian);
  }
  int asInts8ToIntNAndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToIntNAndRemoved(this, offset: offset, endian: endian);
  }
  int asInts8ToInt16AndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToInt16AndRemoved(this, offset: offset, endian: endian);
  }
  int asInts8ToInt24AndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToInt24AndRemoved(this, offset: offset, endian: endian);
  }
  int asInts8ToInt32AndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToInt32AndRemoved(this, offset: offset, endian: endian);
  }
}
