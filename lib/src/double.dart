// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

export 'dart:typed_data' show Endian;

List<int> double32ToInts8(double input, [ Endian endian = Endian.little ]) {
  final ByteData byteData = ByteData(4)..setFloat32(0, input, endian);
  final List<int> result = byteData.buffer.asUint8List();
  return result;
}
List<int> double64ToInts8(double input, [ Endian endian = Endian.little ]) {
  final ByteData byteData = ByteData(8)..setFloat64(0, input, endian);
  final List<int> result = byteData.buffer.asUint8List();
  return result;
}

double ints8ToDouble32Little(List<int> ints, [ int offset = 0 ]) {
  final List<int> list = ints.sublist(offset, offset + 4);
  return Uint8List.fromList(list).buffer.asFloat32List().first;
}
double ints8ToDouble64Little(List<int> ints, [ int offset = 0 ]) {
  final List<int> list = ints.sublist(offset, offset + 8);
  return Uint8List.fromList(list).buffer.asFloat64List().first;
}

double ints8ToDouble32Big(List<int> ints, [ int offset = 0 ]) {
  int index = offset + 3;
  final List<int> list = List.filled(4, 0x00);
  list[0] = ints[index--];
  list[1] = ints[index--];
  list[2] = ints[index--];
  list[3] = ints[index];

  return Uint8List.fromList(list).buffer.asFloat32List().first;
}
double ints8ToDouble64Big(List<int> ints, [ int offset = 0 ]) {
  int index = offset + 7;
  final List<int> list = List.filled(8, 0x00);
  list[0] = ints[index--];
  list[1] = ints[index--];
  list[2] = ints[index--];
  list[3] = ints[index--];
  list[4] = ints[index--];
  list[5] = ints[index--];
  list[6] = ints[index--];
  list[7] = ints[index];

  return Uint8List.fromList(list).buffer.asFloat64List().first;
}

double ints8ToDouble32(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToDouble32Little(ints, offset)
    : ints8ToDouble32Big(ints, offset);
}
double ints8ToDouble64(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToDouble64Little(ints, offset)
    : ints8ToDouble64Big(ints, offset);
}

double ints8ToDouble32LittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final double result = ints8ToDouble32Little(ints, offset);
  ints.removeRange(0, 4);

  return result;
}
double ints8ToDouble64LittleAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final double result = ints8ToDouble64Little(ints, offset);
  ints.removeRange(0, 8);

  return result;
}

double ints8ToDouble32BigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final double result = ints8ToDouble32Big(ints, offset);
  ints.removeRange(0, 4);

  return result;
}
double ints8ToDouble64BigAndRemoved(List<int> ints, [ int offset = 0 ]) {
  final double result = ints8ToDouble64Big(ints, offset);
  ints.removeRange(0, 8);

  return result;
}

double ints8ToDouble32AndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
    ? ints8ToDouble32LittleAndRemoved(ints, offset)
    : ints8ToDouble32BigAndRemoved(ints, offset);
}
double ints8ToDouble64AndRemoved(List<int> ints, { int offset = 0, Endian endian = Endian.little }) {
  return endian == Endian.little
      ? ints8ToDouble64LittleAndRemoved(ints, offset)
      : ints8ToDouble64BigAndRemoved(ints, offset);
}

extension DoubleToIntsExtension on double {
  List<int> asDouble32ToInts8([ Endian endian = Endian.little ]) {
    return double32ToInts8(this, endian);
  }
  List<int> asDouble64ToInts8([ Endian endian = Endian.little ]) {
    return double64ToInts8(this, endian);
  }
}

extension IntsToDoubleExtension on List<int> {
  double asInts8ToDouble32Little([ int offset = 0 ]) {
    return ints8ToDouble32Little(this, offset);
  }
  double asInts8ToDouble64Little([ int offset = 0 ]) {
    return ints8ToDouble64Little(this, offset);
  }

  double asInts8ToDouble32Big([ int offset = 0 ]) {
    return ints8ToDouble32Big(this, offset);
  }
  double asInts8ToDouble64Big([ int offset = 0 ]) {
    return ints8ToDouble64Big(this, offset);
  }

  double asInts8ToDouble32({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToDouble32(this, offset: offset, endian: endian);
  }
  double asInts8ToDouble64({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToDouble64(this, offset: offset, endian: endian);
  }

  double asInts8ToDouble32LittleAndRemoved([ int offset = 0 ]) {
    return ints8ToDouble32LittleAndRemoved(this, offset);
  }
  double asInts8ToDouble64LittleAndRemoved([ int offset = 0 ]) {
    return ints8ToDouble64LittleAndRemoved(this, offset);
  }

  double asInts8ToDouble32BigAndRemoved([ int offset = 0 ]) {
    return ints8ToDouble32BigAndRemoved(this, offset);
  }
  double asInts8ToDouble64BigAndRemoved([ int offset = 0 ]) {
    return ints8ToDouble64BigAndRemoved(this, offset);
  }

  double asInts8ToDouble32AndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToDouble32AndRemoved(this, offset: offset, endian: endian);
  }
  double asInts8ToDouble64AndRemoved({ int offset = 0, Endian endian = Endian.little }) {
    return ints8ToDouble64AndRemoved(this, offset: offset, endian: endian);
  }
}
