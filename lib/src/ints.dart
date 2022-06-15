// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'int.dart';

export 'dart:typed_data' show Endian;

List<int> ints16ToInts8Big(List<int> ints) {
  final List<int> result = List<int>.filled(ints.length * 2, 0x00);

  for (int i = 0, j = 0; i < ints.length; i++) {
    final List<int> a = ints[i].asInt16ToInts8Big();

    result[j++] = a[0];
    result[j++] = a[1];
  }

  return result;
}
List<int> ints32ToInts8Big(List<int> ints) {
  final List<int> result = List<int>.filled(ints.length * 4, 0x00);

  for (int i = 0, j = 0; i < ints.length; i++) {
    final List<int> a = ints[i].asInt32ToInts8Big();

    result[j++] = a[0];
    result[j++] = a[1];
    result[j++] = a[2];
    result[j++] = a[3];
  }

  return result;
}

List<int> ints16ToInts8Little(List<int> ints) {
  final List<int> result = List<int>.filled(ints.length * 2, 0x00);

  for (int i = 0, j = result.length - 1; i < ints.length; i++) {
    final List<int> a = ints[i].asInt16ToInts8Big();

    result[j--] = a[0];
    result[j--] = a[1];
  }

  return result;
}
List<int> ints32ToInts8Little(List<int> ints) {
  final List<int> result = List<int>.filled(ints.length * 4, 0x00);

  for (int i = 0, j = result.length - 1; i < ints.length; i++) {
    final List<int> a = ints[i].asInt32ToInts8Big();

    result[j--] = a[0];
    result[j--] = a[1];
    result[j--] = a[2];
    result[j--] = a[3];
  }

  return result;
}

List<int> ints16ToInts8(List<int> ints, [ Endian endian = Endian.big ]) {
  return endian == Endian.big
    ? ints16ToInts8Big(ints)
    : ints16ToInts8Little(ints);
}
List<int> ints32ToInts8(List<int> ints, [ Endian endian = Endian.big ]) {
  return endian == Endian.big
    ? ints32ToInts8Big(ints)
    : ints32ToInts8Little(ints);
}

List<int> getAndRemoveRangeFromInts(List<int> ints, int start, [ int? end ]) {
  final List<int> result = ints.sublist(start, end);
  ints.removeRange(start, end ?? ints.length);

  return result;
}

extension IntsToIntsExtension on List<int> {
  List<int> asInts16ToInts8Big() => ints16ToInts8Big(this);
  List<int> asInts32ToInts8Big() => ints32ToInts8Big(this);

  List<int> asInts16ToInts8Little() => ints16ToInts8Little(this);
  List<int> asInts32ToInts8Little() => ints32ToInts8Little(this);

  List<int> asInts16ToInts8([ Endian endian = Endian.big ]) => ints16ToInts8(this, endian);
  List<int> asInts32ToInts8([ Endian endian = Endian.big ]) => ints32ToInts8(this, endian);

  List<int> getAndRemoveRange(int start, [ int? end ]) {
    return getAndRemoveRangeFromInts(this, start, end);
  }
}
