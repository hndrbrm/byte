// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'package:byte/byte.dart';

void main() {
  final List<int> a01 = bigIntToInts8Little(BigInt.parse('1122334455667788', radix: 16), 8);
  final List<int> a02 = bigIntNToInts8Little(BigInt.parse('1122334455667788', radix: 16));
  final List<int> a03 = bigInt64ToInts8Little(BigInt.parse('1122334455667788', radix: 16));
  final List<int> a04 = bigInt128ToInts8Little(BigInt.parse('112233445566778899aabbccddeeff11', radix: 16));
  final List<int> a05 = bigInt256ToInts8Little(BigInt.parse('112233445566778899aabbccddeeff112233445566778899aabbccddeeff1122', radix: 16));

  final List<int> a06 = bigIntToInts8Big(BigInt.parse('1122334455667788', radix: 16), 8);
  final List<int> a07 = bigIntNToInts8Big(BigInt.parse('1122334455667788', radix: 16));
  final List<int> a08 = bigInt64ToInts8Big(BigInt.parse('1122334455667788', radix: 16));
  final List<int> a09 = bigInt128ToInts8Big(BigInt.parse('112233445566778899aabbccddeeff11', radix: 16));
  final List<int> a10 = bigInt256ToInts8Big(BigInt.parse('112233445566778899aabbccddeeff112233445566778899aabbccddeeff1122', radix: 16));

  final List<int> a11 = bigIntToInts8(BigInt.parse('1122334455667788', radix: 16), 8, Endian.little);
  final List<int> a12 = bigIntNToInts8(BigInt.parse('1122334455667788', radix: 16), Endian.little);
  final List<int> a13 = bigInt64ToInts8(BigInt.parse('1122334455667788', radix: 16), Endian.little);
  final List<int> a14 = bigInt128ToInts8(BigInt.parse('112233445566778899aabbccddeeff11', radix: 16), Endian.little);
  final List<int> a15 = bigInt256ToInts8(BigInt.parse('112233445566778899aabbccddeeff112233445566778899aabbccddeeff1122', radix: 16), Endian.little);

  final BigInt b01 = ints8ToBigIntLittle(a01, 0, 8);
  final BigInt b02 = ints8ToBigIntNLittle(a02);
  final BigInt b03 = ints8ToBigInt64Little(a03, 0);
  final BigInt b04 = ints8ToBigInt128Little(a04, 0);
  final BigInt b05 = ints8ToBigInt256Little(a05, 0);

  final BigInt b06 = ints8ToBigIntBig(a06, 0, 8);
  final BigInt b07 = ints8ToBigIntNBig(a07);
  final BigInt b08 = ints8ToBigInt64Big(a08, 0);
  final BigInt b09 = ints8ToBigInt128Big(a09, 0);
  final BigInt b10 = ints8ToBigInt256Big(a10, 0);

  final BigInt b11 = ints8ToBigInt(a11, 0, 8, Endian.little);
  final BigInt b12 = ints8ToBigIntN(a12);
  final BigInt b13 = ints8ToBigInt64(a13);
  final BigInt b14 = ints8ToBigInt128(a14);
  final BigInt b15 = ints8ToBigInt256(a15);

  final BigInt c01 = ints8ToBigIntLittleAndRemoved(a01, 0, 8);
  final BigInt c02 = ints8ToBigIntNLittleAndRemoved(a02);
  final BigInt c03 = ints8ToBigInt64LittleAndRemoved(a03, 0);
  final BigInt c04 = ints8ToBigInt128LittleAndRemoved(a04, 0);
  final BigInt c05 = ints8ToBigInt256LittleAndRemoved(a05, 0);

  final BigInt c06 = ints8ToBigIntBigAndRemoved(a06, 0, 8);
  final BigInt c07 = ints8ToBigIntNBigAndRemoved(a07);
  final BigInt c08 = ints8ToBigInt64BigAndRemoved(a08, 0);
  final BigInt c09 = ints8ToBigInt128BigAndRemoved(a09, 0);
  final BigInt c10 = ints8ToBigInt256BigAndRemoved(a10, 0);

  final BigInt c11 = ints8ToBigIntAndRemoved(a11, 0, 8, Endian.little);
  final BigInt c12 = ints8ToBigIntNAndRemoved(a12);
  final BigInt c13 = ints8ToBigInt64AndRemoved(a13);
  final BigInt c14 = ints8ToBigInt128AndRemoved(a14);
  final BigInt c15 = ints8ToBigInt256AndRemoved(a15);

  final List<int> d01 = ints16ToInts8Big([ 0x1122, 0x3344, 0x5566, 0x7788 ]);
  final List<int> d02 = ints32ToInts8Big([ 0x11223344, 0x55667788 ]);
  final List<int> d03 = ints16ToInts8Little([ 0x1122, 0x3344, 0x5566, 0x7788 ]);
  final List<int> d04 = ints32ToInts8Little([ 0x11223344, 0x55667788 ]);
  final List<int> d05 = ints16ToInts8([ 0x1122, 0x3344, 0x5566, 0x7788 ]);
  final List<int> d06 = ints32ToInts8([ 0x11223344, 0x55667788 ]);
  final List<int> d07 = getAndRemoveRangeFromInts([ 0x11, 0x22, 0x33, 0x44 ], 1, 2);

  final List<int> e1 = double32ToInts8(2.1, Endian.little);
  final List<int> e2 = double64ToInts8(2.1, Endian.little);

  final double f1 = ints8ToDouble32Little(e1);
  final double f2 = ints8ToDouble32Big(e1);
  final double f3 = ints8ToDouble32(e1);
  final double f4 = ints8ToDouble64Little(e2);
  final double f5 = ints8ToDouble64Big(e2);
  final double f6 = ints8ToDouble64(e2);

  final double g1 = ints8ToDouble32LittleAndRemoved(e1);
  final double g2 = ints8ToDouble32BigAndRemoved(e1);
  final double g3 = ints8ToDouble32AndRemoved(e1);
  final double g4 = ints8ToDouble64LittleAndRemoved(e2);
  final double g5 = ints8ToDouble64BigAndRemoved(e2);
  final double g6 = ints8ToDouble64AndRemoved(e2);

  final List<int> h1 = intToInts8Little(0x11223344, 4);
  final List<int> h2 = intToInts8Big(0x11223344, 4);
  final List<int> h3 = intToInts8(0x11223344, 4, Endian.little);
  final List<int> h4 = intNToInts8Little(0x11223344);
  final List<int> h5 = intNToInts8Big(0x11223344);
  final List<int> h6 = intNToInts8(0x11223344, Endian.little);
  final List<int> h7 = int16ToInts8Little(0x1122);
  final List<int> h8 = int16ToInts8Big(0x1122);
  final List<int> h9 = int16ToInts8(0x1122, Endian.little);
  final List<int> h10 = int24ToInts8Little(0x112233);
  final List<int> h11 = int24ToInts8Big(0x112233);
  final List<int> h12 = int24ToInts8(0x112233, Endian.little);
  final List<int> h13 = int32ToInts8Little(0x11223344);
  final List<int> h14 = int32ToInts8Big(0x11223344);
  final List<int> h15 = int32ToInts8(0x11223344, Endian.little);
  final List<int> h16 = int40ToInts8Little(0x11223344);
  final List<int> h17 = int40ToInts8Big(0x11223344);
  final List<int> h18 = int40ToInts8(0x11223344, Endian.little);
  final List<int> h19 = int48ToInts8Little(0x11223344);
  final List<int> h20 = int48ToInts8Big(0x11223344);
  final List<int> h21 = int48ToInts8(0x11223344, Endian.little);
  final List<int> h22 = int56ToInts8Little(0x11223344);
  final List<int> h23 = int56ToInts8Big(0x11223344);
  final List<int> h24 = int56ToInts8(0x11223344, Endian.little);
  final List<int> h25 = int64ToInts8Little(0x11223344);
  final List<int> h26 = int64ToInts8Big(0x11223344);
  final List<int> h27 = int64ToInts8(0x11223344, Endian.little);

  final int i1 = ints8ToIntLittle(h1, 0, 4);
  final int i2 = ints8ToIntBig(h2, 0, 4);
  final int i3 = ints8ToInt(h3, 0, 4, Endian.little);
  final int i4 = ints8ToIntNLittle(h4);
  final int i5 = ints8ToIntNBig(h5);
  final int i6 = ints8ToIntN(h6);
  final int i7 = ints8ToInt16Little(h7, 0);
  final int i8 = ints8ToInt16Big(h8, 0);
  final int i9 = ints8ToInt16(h9);
  final int i10 = ints8ToInt24Little(h10, 0);
  final int i11 = ints8ToInt24Big(h11, 0);
  final int i12 = ints8ToInt24(h12);
  final int i13 = ints8ToInt32Little(h13, 0);
  final int i14 = ints8ToInt32Big(h14, 0);
  final int i15 = ints8ToInt32(h15);

  final int j1 = ints8ToIntLittleAndRemoved(h1, 0, 4);
  final int j2 = ints8ToIntBigAndRemoved(h2, 0, 4);
  final int j3 = ints8ToIntAndRemoved(h3, 0, 4, Endian.little);
  final int j4 = ints8ToIntNLittleAndRemoved(h4);
  final int j5 = ints8ToIntNBigAndRemoved(h5);
  final int j6 = ints8ToIntNAndRemoved(h6);
  final int j7 = ints8ToInt16LittleAndRemoved(h7, 0);
  final int j8 = ints8ToInt16BigAndRemoved(h8, 0);
  final int j9 = ints8ToInt16AndRemoved(h9);
  final int j10 = ints8ToInt24LittleAndRemoved(h10, 0);
  final int j11 = ints8ToInt24BigAndRemoved(h11, 0);
  final int j12 = ints8ToInt24AndRemoved(h12);
  final int j13 = ints8ToInt32LittleAndRemoved(h13, 0);
  final int j14 = ints8ToInt32BigAndRemoved(h14, 0);
  final int j15 = ints8ToInt32AndRemoved(h15);
}
