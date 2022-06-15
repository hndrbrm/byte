// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:byte/byte.dart';

class IntToIntsLittleBenchmark extends BenchmarkBase {
  const IntToIntsLittleBenchmark() : super('intToIntsLittle');

  @override
  void run() {
    intToInts8Little(0x11223344, 4);
  }
}
class IntToIntsNLittleBenchmark extends BenchmarkBase {
  const IntToIntsNLittleBenchmark() : super('intToIntsNLittle');

  @override
  void run() {
    intNToInts8Little(0x11223344);
  }
}
class IntToInts16LittleBenchmark extends BenchmarkBase {
  const IntToInts16LittleBenchmark() : super('intToInts16Little');

  @override
  void run() {
    int16ToInts8Little(0x11223344);
  }
}
class IntToInts24LittleBenchmark extends BenchmarkBase {
  const IntToInts24LittleBenchmark() : super('intToInts24Little');

  @override
  void run() {
    int24ToInts8Little(0x11223344);
  }
}
class IntToInts32LittleBenchmark extends BenchmarkBase {
  const IntToInts32LittleBenchmark() : super('intToInts32Little');

  @override
  void run() {
    int32ToInts8Little(0x11223344);
  }
}
class IntToInts40LittleBenchmark extends BenchmarkBase {
  const IntToInts40LittleBenchmark() : super('intToInts40Little');

  @override
  void run() {
    int40ToInts8Little(0x11223344);
  }
}
class IntToInts48LittleBenchmark extends BenchmarkBase {
  const IntToInts48LittleBenchmark() : super('intToInts48Little');

  @override
  void run() {
    int48ToInts8Little(0x11223344);
  }
}
class IntToInts56LittleBenchmark extends BenchmarkBase {
  const IntToInts56LittleBenchmark() : super('intToInts56Little');

  @override
  void run() {
    int56ToInts8Little(0x11223344);
  }
}
class IntToInts64LittleBenchmark extends BenchmarkBase {
  const IntToInts64LittleBenchmark() : super('intToInts64Little');

  @override
  void run() {
    int64ToInts8Little(0x11223344);
  }
}

class IntToIntsBigBenchmark extends BenchmarkBase {
  const IntToIntsBigBenchmark() : super('intToIntsBig');

  @override
  void run() {
    intToInts8Big(0x11223344, 4);
  }
}
class IntToIntsNBigBenchmark extends BenchmarkBase {
  const IntToIntsNBigBenchmark() : super('intToIntsNBig');

  @override
  void run() {
    intNToInts8Big(0x11223344);
  }
}
class IntToInts16BigBenchmark extends BenchmarkBase {
  const IntToInts16BigBenchmark() : super('intToInts16Big');

  @override
  void run() {
    int16ToInts8Big(0x11223344);
  }
}
class IntToInts24BigBenchmark extends BenchmarkBase {
  const IntToInts24BigBenchmark() : super('intToInts24Big');

  @override
  void run() {
    int24ToInts8Big(0x11223344);
  }
}
class IntToInts32BigBenchmark extends BenchmarkBase {
  const IntToInts32BigBenchmark() : super('intToInts32Big');

  @override
  void run() {
    int32ToInts8Big(0x11223344);
  }
}
class IntToInts40BigBenchmark extends BenchmarkBase {
  const IntToInts40BigBenchmark() : super('intToInts40Big');

  @override
  void run() {
    int40ToInts8Big(0x11223344);
  }
}
class IntToInts48BigBenchmark extends BenchmarkBase {
  const IntToInts48BigBenchmark() : super('intToInts48Big');

  @override
  void run() {
    int48ToInts8Big(0x11223344);
  }
}
class IntToInts56BigBenchmark extends BenchmarkBase {
  const IntToInts56BigBenchmark() : super('intToInts56Big');

  @override
  void run() {
    int56ToInts8Big(0x11223344);
  }
}
class IntToInts64BigBenchmark extends BenchmarkBase {
  const IntToInts64BigBenchmark() : super('intToInts64Big');

  @override
  void run() {
    int64ToInts8Big(0x11223344);
  }
}

class IntToIntsBenchmark extends BenchmarkBase {
  const IntToIntsBenchmark() : super('intToInts');

  @override
  void run() {
    intToInts8(0x11223344, 4);
  }
}
class IntToIntsNBenchmark extends BenchmarkBase {
  const IntToIntsNBenchmark() : super('intToIntsN');

  @override
  void run() {
    intNToInts8(0x11223344);
  }
}
class IntToInts16Benchmark extends BenchmarkBase {
  const IntToInts16Benchmark() : super('intToInts16');

  @override
  void run() {
    int16ToInts8(0x11223344);
  }
}
class IntToInts24Benchmark extends BenchmarkBase {
  const IntToInts24Benchmark() : super('intToInts24');

  @override
  void run() {
    int24ToInts8(0x11223344);
  }
}
class IntToInts32Benchmark extends BenchmarkBase {
  const IntToInts32Benchmark() : super('intToInts32');

  @override
  void run() {
    int32ToInts8(0x11223344);
  }
}
class IntToInts40Benchmark extends BenchmarkBase {
  const IntToInts40Benchmark() : super('intToInts40');

  @override
  void run() {
    int40ToInts8(0x11223344);
  }
}
class IntToInts48Benchmark extends BenchmarkBase {
  const IntToInts48Benchmark() : super('intToInts48');

  @override
  void run() {
    int48ToInts8(0x11223344);
  }
}
class IntToInts56Benchmark extends BenchmarkBase {
  const IntToInts56Benchmark() : super('intToInts56');

  @override
  void run() {
    int56ToInts8(0x11223344);
  }
}
class IntToInts64Benchmark extends BenchmarkBase {
  const IntToInts64Benchmark() : super('intToInts64');

  @override
  void run() {
    int64ToInts8(0x11223344);
  }
}

class IntsToIntLittleBenchmark extends BenchmarkBase {
  const IntsToIntLittleBenchmark() : super('intsToIntLittle');

  @override
  void run() {
    ints8ToIntLittle([ 0x11, 0x22, 0x33, 0x44 ], 0, 4);
  }
}
class IntsNToIntLittleBenchmark extends BenchmarkBase {
  const IntsNToIntLittleBenchmark() : super('intsNToIntLittle');

  @override
  void run() {
    ints8ToIntNLittle([ 0x11, 0x22, 0x33, 0x44 ], 0);
  }
}
class Ints16ToIntLittleBenchmark extends BenchmarkBase {
  const Ints16ToIntLittleBenchmark() : super('ints16ToIntLittle');

  @override
  void run() {
    ints8ToInt16Little([ 0x11, 0x22 ], 0);
  }
}
class Ints24ToIntLittleBenchmark extends BenchmarkBase {
  const Ints24ToIntLittleBenchmark() : super('ints24ToIntLittle');

  @override
  void run() {
    ints8ToInt24Little([ 0x11, 0x22, 0x33 ], 0);
  }
}
class Ints8ToInt32LittleBenchmark extends BenchmarkBase {
  const Ints8ToInt32LittleBenchmark() : super('ints8To32IntLittle');

  @override
  void run() {
    ints8ToInt32Little([ 0x11, 0x22, 0x33, 0x44 ], 0);
  }
}

class IntsToIntBigBenchmark extends BenchmarkBase {
  const IntsToIntBigBenchmark() : super('intsToIntBig');

  @override
  void run() {
    ints8ToIntBig([ 0x11, 0x22, 0x33, 0x44 ], 0, 4);
  }
}
class IntsNToIntBigBenchmark extends BenchmarkBase {
  const IntsNToIntBigBenchmark() : super('intsNToIntBig');

  @override
  void run() {
    ints8ToIntNBig([ 0x11, 0x22, 0x33, 0x44 ], 0);
  }
}
class Ints16ToIntBigBenchmark extends BenchmarkBase {
  const Ints16ToIntBigBenchmark() : super('ints16ToIntBig');

  @override
  void run() {
    ints8ToInt16Big([ 0x11, 0x22 ], 0);
  }
}
class Ints24ToIntBigBenchmark extends BenchmarkBase {
  const Ints24ToIntBigBenchmark() : super('ints24ToIntBig');

  @override
  void run() {
    ints8ToInt24Big([ 0x11, 0x22, 0x33 ], 0);
  }
}
class Ints8ToInt32BigBenchmark extends BenchmarkBase {
  const Ints8ToInt32BigBenchmark() : super('ints8ToInt32Big');

  @override
  void run() {
    ints8ToInt32Big([ 0x11, 0x22, 0x33, 0x44 ], 0);
  }
}

class IntsToIntBenchmark extends BenchmarkBase {
  const IntsToIntBenchmark() : super('intsToInt');

  @override
  void run() {
    ints8ToInt([ 0x11, 0x22, 0x33, 0x44 ], 0, 4);
  }
}
class IntsNToIntBenchmark extends BenchmarkBase {
  const IntsNToIntBenchmark() : super('intsNToInt');

  @override
  void run() {
    ints8ToIntN([ 0x11, 0x22, 0x33, 0x44 ]);
  }
}
class Ints16ToIntBenchmark extends BenchmarkBase {
  const Ints16ToIntBenchmark() : super('ints16ToInt');

  @override
  void run() {
    ints8ToInt16([ 0x11, 0x22 ]);
  }
}
class Ints24ToIntBenchmark extends BenchmarkBase {
  const Ints24ToIntBenchmark() : super('ints24ToInt');

  @override
  void run() {
    ints8ToInt24([ 0x11, 0x22, 0x33 ]);
  }
}
class Ints32ToIntBenchmark extends BenchmarkBase {
  const Ints32ToIntBenchmark() : super('ints32ToInt');

  @override
  void run() {
    ints8ToInt32([ 0x11, 0x22, 0x33, 0x44 ]);
  }
}

class IntsToIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const IntsToIntLittleAndRemovedBenchmark() : super('intsToIntLittleAndRemoved');

  @override
  void run() {
    ints8ToIntLittleAndRemoved([ 0x11, 0x22, 0x33, 0x44 ], 0, 4);
  }
}
class IntsNToIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const IntsNToIntLittleAndRemovedBenchmark() : super('intsNToIntLittleAndRemoved');

  @override
  void run() {
    ints8ToIntNLittleAndRemoved([ 0x11, 0x22, 0x33, 0x44 ], 0);
  }
}
class Ints16ToIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const Ints16ToIntLittleAndRemovedBenchmark() : super('ints16ToIntLittleAndRemoved');

  @override
  void run() {
    ints8ToInt16LittleAndRemoved([ 0x11, 0x22 ], 0);
  }
}
class Ints24ToIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const Ints24ToIntLittleAndRemovedBenchmark() : super('ints24ToIntLittleAndRemoved');

  @override
  void run() {
    ints8ToInt24LittleAndRemoved([ 0x11, 0x22, 0x33 ], 0);
  }
}
class Ints32ToIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const Ints32ToIntLittleAndRemovedBenchmark() : super('ints32ToIntLittleAndRemoved');

  @override
  void run() {
    ints8ToInt32LittleAndRemoved([ 0x11, 0x22, 0x33, 0x44 ], 0);
  }
}

class IntsToIntBigAndRemovedBenchmark extends BenchmarkBase {
  const IntsToIntBigAndRemovedBenchmark() : super('intsToIntBigAndRemoved');

  @override
  void run() {
    ints8ToIntBigAndRemoved([ 0x11, 0x22, 0x33, 0x44 ], 0, 4);
  }
}
class IntsNToIntBigAndRemovedBenchmark extends BenchmarkBase {
  const IntsNToIntBigAndRemovedBenchmark() : super('intsNToIntBigAndRemoved');

  @override
  void run() {
    ints8ToIntNBigAndRemoved([ 0x11, 0x22, 0x33, 0x44 ], 0);
  }
}
class Ints16ToIntBigAndRemovedBenchmark extends BenchmarkBase {
  const Ints16ToIntBigAndRemovedBenchmark() : super('ints16ToIntBigAndRemoved');

  @override
  void run() {
    ints8ToInt16BigAndRemoved([ 0x11, 0x22 ], 0);
  }
}
class Ints24ToIntBigAndRemovedBenchmark extends BenchmarkBase {
  const Ints24ToIntBigAndRemovedBenchmark() : super('ints24ToIntBigAndRemoved');

  @override
  void run() {
    ints8ToInt24BigAndRemoved([ 0x11, 0x22, 0x33 ], 0);
  }
}
class Ints32ToIntBigAndRemovedBenchmark extends BenchmarkBase {
  const Ints32ToIntBigAndRemovedBenchmark() : super('ints32ToIntBigAndRemoved');

  @override
  void run() {
    ints8ToInt32BigAndRemoved([ 0x11, 0x22, 0x33, 0x44 ], 0);
  }
}

class IntsToIntAndRemovedBenchmark extends BenchmarkBase {
  const IntsToIntAndRemovedBenchmark() : super('intsToIntAndRemoved');

  @override
  void run() {
    ints8ToIntAndRemoved([ 0x11, 0x22, 0x33, 0x44 ], 0, 4);
  }
}
class IntsNToIntAndRemovedBenchmark extends BenchmarkBase {
  const IntsNToIntAndRemovedBenchmark() : super('intsNToIntAndRemoved');

  @override
  void run() {
    ints8ToIntNAndRemoved([ 0x11, 0x22, 0x33, 0x44 ]);
  }
}
class Ints16ToIntAndRemovedBenchmark extends BenchmarkBase {
  const Ints16ToIntAndRemovedBenchmark() : super('ints16ToIntAndRemoved');

  @override
  void run() {
    ints8ToInt16AndRemoved([ 0x11, 0x22 ]);
  }
}
class Ints24ToIntAndRemovedBenchmark extends BenchmarkBase {
  const Ints24ToIntAndRemovedBenchmark() : super('ints24ToIntAndRemoved');

  @override
  void run() {
    ints8ToInt24AndRemoved([ 0x11, 0x22, 0x33 ]);
  }
}
class Ints32ToIntAndRemovedBenchmark extends BenchmarkBase {
  const Ints32ToIntAndRemovedBenchmark() : super('ints32ToIntAndRemoved');

  @override
  void run() {
    ints8ToInt32AndRemoved([ 0x11, 0x22, 0x33, 0x44 ]);
  }
}

class BigIntToIntsLittleBenchmark extends BenchmarkBase {
  const BigIntToIntsLittleBenchmark() : super('bigIntToIntsLittle');

  @override
  void run() {
    bigIntToInts8Little(BigInt.parse('1122334455667788', radix: 16), 8);
  }
}
class BigIntToIntsNLittleBenchmark extends BenchmarkBase {
  const BigIntToIntsNLittleBenchmark() : super('bigIntToIntsNLittle');

  @override
  void run() {
    bigIntNToInts8Little(BigInt.parse('1122334455667788', radix: 16));
  }
}
class BigIntToInts64LittleBenchmark extends BenchmarkBase {
  const BigIntToInts64LittleBenchmark() : super('bigIntToInts64Little');

  @override
  void run() {
    bigInt64ToInts8Little(BigInt.parse('1122334455667788', radix: 16));
  }
}
class BigIntToInts128LittleBenchmark extends BenchmarkBase {
  const BigIntToInts128LittleBenchmark() : super('bigIntToInts128Little');

  @override
  void run() {
    bigInt128ToInts8Little(BigInt.parse('112233445566778899aabbccddeeff11', radix: 16));
  }
}
class BigIntToInts256LittleBenchmark extends BenchmarkBase {
  const BigIntToInts256LittleBenchmark() : super('bigIntToInts256Little');

  @override
  void run() {
    bigInt256ToInts8Little(BigInt.parse('112233445566778899aabbccddeeff112233445566778899aabbccddeeff1122', radix: 16));
  }
}

class BigIntToIntsBigBenchmark extends BenchmarkBase {
  const BigIntToIntsBigBenchmark() : super('bigIntToIntsBig');

  @override
  void run() {
    bigIntToInts8Big(BigInt.parse('1122334455667788', radix: 16), 8);
  }
}
class BigIntToIntsNBigBenchmark extends BenchmarkBase {
  const BigIntToIntsNBigBenchmark() : super('bigIntToIntsNBig');

  @override
  void run() {
    bigIntNToInts8Big(BigInt.parse('1122334455667788', radix: 16));
  }
}
class BigIntToInts64BigBenchmark extends BenchmarkBase {
  const BigIntToInts64BigBenchmark() : super('bigIntToInts64Big');

  @override
  void run() {
    bigInt64ToInts8Big(BigInt.parse('1122334455667788', radix: 16));
  }
}
class BigIntToInts128BigBenchmark extends BenchmarkBase {
  const BigIntToInts128BigBenchmark() : super('bigIntToInts128Big');

  @override
  void run() {
    bigInt128ToInts8Big(BigInt.parse('112233445566778899aabbccddeeff11', radix: 16));
  }
}
class BigIntToInts256BigBenchmark extends BenchmarkBase {
  const BigIntToInts256BigBenchmark() : super('bigIntToInts256Big');

  @override
  void run() {
    bigInt256ToInts8Big(BigInt.parse('112233445566778899aabbccddeeff112233445566778899aabbccddeeff1122', radix: 16));
  }
}

class BigIntToIntsBenchmark extends BenchmarkBase {
  const BigIntToIntsBenchmark() : super('bigIntToInts');

  @override
  void run() {
    bigIntToInts8(BigInt.parse('1122334455667788', radix: 16), 8);
  }
}
class BigIntToIntsNBenchmark extends BenchmarkBase {
  const BigIntToIntsNBenchmark() : super('bigIntToIntsN');

  @override
  void run() {
    bigIntNToInts8(BigInt.parse('1122334455667788', radix: 16));
  }
}
class BigIntToInts64Benchmark extends BenchmarkBase {
  const BigIntToInts64Benchmark() : super('bigIntToInts64');

  @override
  void run() {
    bigInt64ToInts8(BigInt.parse('1122334455667788', radix: 16));
  }
}
class BigIntToInts128Benchmark extends BenchmarkBase {
  const BigIntToInts128Benchmark() : super('bigIntToInts128');

  @override
  void run() {
    bigInt128ToInts8(BigInt.parse('112233445566778899aabbccddeeff11', radix: 16));
  }
}
class BigIntToInts256Benchmark extends BenchmarkBase {
  const BigIntToInts256Benchmark() : super('bigIntToInts256');

  @override
  void run() {
    bigInt256ToInts8(BigInt.parse('112233445566778899aabbccddeeff112233445566778899aabbccddeeff1122', radix: 16));
  }
}

class IntsToBigIntLittleBenchmark extends BenchmarkBase {
  const IntsToBigIntLittleBenchmark() : super('intsToBigIntLittle');

  @override
  void run() {
    ints8ToBigIntLittle([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0, 4);
  }
}
class IntsNToBigIntLittleBenchmark extends BenchmarkBase {
  const IntsNToBigIntLittleBenchmark() : super('intsNToBigIntLittle');

  @override
  void run() {
    ints8ToBigIntNLittle([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0);
  }
}
class Ints64ToBigIntLittleBenchmark extends BenchmarkBase {
  const Ints64ToBigIntLittleBenchmark() : super('ints64ToBigIntLittle');

  @override
  void run() {
    ints8ToBigInt64Little([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0);
  }
}
class Ints128ToBigIntLittleBenchmark extends BenchmarkBase {
  const Ints128ToBigIntLittleBenchmark() : super('ints128ToBigIntLittle');

  @override
  void run() {
    ints8ToBigInt128Little([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22 ], 0);
  }
}
class Ints256ToBigIntLittleBenchmark extends BenchmarkBase {
  const Ints256ToBigIntLittleBenchmark() : super('ints256ToBigIntLittle');

  @override
  void run() {
    ints8ToBigInt256Little([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22 ], 0);
  }
}

class IntsToBigIntBigBenchmark extends BenchmarkBase {
  const IntsToBigIntBigBenchmark() : super('intsToBigIntBig');

  @override
  void run() {
    ints8ToBigIntBig([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0, 4);
  }
}
class IntsNToBigIntBigBenchmark extends BenchmarkBase {
  const IntsNToBigIntBigBenchmark() : super('intsNToBigIntBig');

  @override
  void run() {
    ints8ToBigIntNBig([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0);
  }
}
class Ints64ToBigIntBigBenchmark extends BenchmarkBase {
  const Ints64ToBigIntBigBenchmark() : super('ints64ToBigIntBig');

  @override
  void run() {
    ints8ToBigInt64Big([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0);
  }
}
class Ints128ToBigIntBigBenchmark extends BenchmarkBase {
  const Ints128ToBigIntBigBenchmark() : super('ints128ToBigIntBig');

  @override
  void run() {
    ints8ToBigInt128Big([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22 ], 0);
  }
}
class Ints256ToBigIntBigBenchmark extends BenchmarkBase {
  const Ints256ToBigIntBigBenchmark() : super('ints256ToBigIntBig');

  @override
  void run() {
    ints8ToBigInt256Big([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22 ], 0);
  }
}

class IntsToBigIntBenchmark extends BenchmarkBase {
  const IntsToBigIntBenchmark() : super('intsToBigInt');

  @override
  void run() {
    ints8ToBigInt([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0, 4);
  }
}
class IntsNToBigIntBenchmark extends BenchmarkBase {
  const IntsNToBigIntBenchmark() : super('intsNToBigInt');

  @override
  void run() {
    ints8ToBigIntN([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ]);
  }
}
class Ints64ToBigIntBenchmark extends BenchmarkBase {
  const Ints64ToBigIntBenchmark() : super('ints64ToBigInt');

  @override
  void run() {
    ints8ToBigInt64([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ]);
  }
}
class Ints128ToBigIntBenchmark extends BenchmarkBase {
  const Ints128ToBigIntBenchmark() : super('ints128ToBigInt');

  @override
  void run() {
    ints8ToBigInt128([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22 ]);
  }
}
class Ints256ToBigIntBenchmark extends BenchmarkBase {
  const Ints256ToBigIntBenchmark() : super('ints256ToBigInt');

  @override
  void run() {
    ints8ToBigInt256([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22 ]);
  }
}

class IntsToBigIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const IntsToBigIntLittleAndRemovedBenchmark() : super('intsToBigIntLittleAndRemoved');

  @override
  void run() {
    ints8ToBigIntLittleAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0, 4);
  }
}
class IntsNToBigIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const IntsNToBigIntLittleAndRemovedBenchmark() : super('intsNToBigIntLittleAndRemoved');

  @override
  void run() {
    ints8ToBigIntNLittleAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0);
  }
}
class Ints64ToBigIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const Ints64ToBigIntLittleAndRemovedBenchmark() : super('ints64ToBigIntLittleAndRemoved');

  @override
  void run() {
    ints8ToBigInt64LittleAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0);
  }
}
class Ints128ToBigIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const Ints128ToBigIntLittleAndRemovedBenchmark() : super('ints128ToBigIntLittleAndRemoved');

  @override
  void run() {
    ints8ToBigInt128LittleAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff ], 0);
  }
}
class Ints256ToBigIntLittleAndRemovedBenchmark extends BenchmarkBase {
  const Ints256ToBigIntLittleAndRemovedBenchmark() : super('ints256ToBigIntLittleAndRemoved');

  @override
  void run() {
    ints8ToBigInt256LittleAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff ], 0);
  }
}

class IntsToBigIntBigAndRemovedBenchmark extends BenchmarkBase {
  const IntsToBigIntBigAndRemovedBenchmark() : super('intsToBigIntBigAndRemoved');

  @override
  void run() {
    ints8ToBigIntBigAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0, 4);
  }
}
class IntsNToBigIntBigAndRemovedBenchmark extends BenchmarkBase {
  const IntsNToBigIntBigAndRemovedBenchmark() : super('intsNToBigIntBigAndRemoved');

  @override
  void run() {
    ints8ToBigIntNBigAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0);
  }
}
class Ints64ToBigIntBigAndRemovedBenchmark extends BenchmarkBase {
  const Ints64ToBigIntBigAndRemovedBenchmark() : super('ints64ToBigIntBigAndRemoved');

  @override
  void run() {
    ints8ToBigInt64BigAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0);
  }
}
class Ints128ToBigIntBigAndRemovedBenchmark extends BenchmarkBase {
  const Ints128ToBigIntBigAndRemovedBenchmark() : super('ints128ToBigIntBigAndRemoved');

  @override
  void run() {
    ints8ToBigInt128BigAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff ], 0);
  }
}
class Ints256ToBigIntBigAndRemovedBenchmark extends BenchmarkBase {
  const Ints256ToBigIntBigAndRemovedBenchmark() : super('ints256ToBigIntBigAndRemoved');

  @override
  void run() {
    ints8ToBigInt256BigAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff ], 0);
  }
}

class IntsToBigIntAndRemovedBenchmark extends BenchmarkBase {
  const IntsToBigIntAndRemovedBenchmark() : super('intsToBigIntAndRemoved');

  @override
  void run() {
    ints8ToBigIntAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ], 0, 4);
  }
}
class IntsNToBigIntAndRemovedBenchmark extends BenchmarkBase {
  const IntsNToBigIntAndRemovedBenchmark() : super('intsNToBigIntAndRemoved');

  @override
  void run() {
    ints8ToBigIntNAndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ]);
  }
}
class Ints64ToBigIntAndRemovedBenchmark extends BenchmarkBase {
  const Ints64ToBigIntAndRemovedBenchmark() : super('ints64ToBigIntAndRemoved');

  @override
  void run() {
    ints8ToBigInt64AndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88 ]);
  }
}
class Ints128ToBigIntAndRemovedBenchmark extends BenchmarkBase {
  const Ints128ToBigIntAndRemovedBenchmark() : super('ints128ToBigIntAndRemoved');

  @override
  void run() {
    ints8ToBigInt128AndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff ]);
  }
}
class Ints256ToBigIntAndRemovedBenchmark extends BenchmarkBase {
  const Ints256ToBigIntAndRemovedBenchmark() : super('ints256ToBigIntAndRemoved');

  @override
  void run() {
    ints8ToBigInt256AndRemoved([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff ]);
  }
}

class DoubleToInts32Benchmark extends BenchmarkBase {
  const DoubleToInts32Benchmark() : super('doubleToInts32');

  @override
  void run() {
    double32ToInts8(0.1);
  }
}
class DoubleToInts64Benchmark extends BenchmarkBase {
  const DoubleToInts64Benchmark() : super('doubleToInts64');

  @override
  void run() {
    double64ToInts8(0.1);
  }
}

class Ints32ToDoubleLittleBenchmark extends BenchmarkBase {
  const Ints32ToDoubleLittleBenchmark() : super('ints32ToDoubleLittle');

  @override
  void run() {
    ints8ToDouble32Little([ 0x3f, 0xf0, 0x00, 0x00 ]);
  }
}
class Ints64ToDoubleLittleBenchmark extends BenchmarkBase {
  const Ints64ToDoubleLittleBenchmark() : super('ints64ToDoubleLittle');

  @override
  void run() {
    ints8ToDouble64Little([ 0x3f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]);
  }
}

class Ints32ToDoubleBigBenchmark extends BenchmarkBase {
  const Ints32ToDoubleBigBenchmark() : super('ints32ToDoubleBig');

  @override
  void run() {
    ints8ToDouble32Big([ 0x3f, 0xf0, 0x00, 0x00 ]);
  }
}
class Ints64ToDoubleBigBenchmark extends BenchmarkBase {
  const Ints64ToDoubleBigBenchmark() : super('ints64ToDoubleBig');

  @override
  void run() {
    ints8ToDouble64Big([ 0x3f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]);
  }
}

class Ints32ToDoubleBenchmark extends BenchmarkBase {
  const Ints32ToDoubleBenchmark() : super('ints32ToDouble');

  @override
  void run() {
    ints8ToDouble32([ 0x3f, 0xf0, 0x00, 0x00 ]);
  }
}
class Ints64ToDoubleBenchmark extends BenchmarkBase {
  const Ints64ToDoubleBenchmark() : super('ints64ToDouble');

  @override
  void run() {
    ints8ToDouble64([ 0x3f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]);
  }
}

class Ints32ToDoubleLittleAndRemovedBenchmark extends BenchmarkBase {
  const Ints32ToDoubleLittleAndRemovedBenchmark() : super('ints32ToDoubleLittleAndRemoved');

  @override
  void run() {
    ints8ToDouble32LittleAndRemoved([ 0x3f, 0xf0, 0x00, 0x00 ]);
  }
}
class Ints64ToDoubleLittleAndRemovedBenchmark extends BenchmarkBase {
  const Ints64ToDoubleLittleAndRemovedBenchmark() : super('ints64ToDoubleLittleAndRemoved');

  @override
  void run() {
    ints8ToDouble64LittleAndRemoved([ 0x3f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]);
  }
}

class Ints32ToDoubleBigAndRemovedBenchmark extends BenchmarkBase {
  const Ints32ToDoubleBigAndRemovedBenchmark() : super('ints32ToDoubleBigAndRemoved');

  @override
  void run() {
    ints8ToDouble32BigAndRemoved([ 0x3f, 0xf0, 0x00, 0x00 ]);
  }
}
class Ints64ToDoubleBigAndRemovedBenchmark extends BenchmarkBase {
  const Ints64ToDoubleBigAndRemovedBenchmark() : super('ints64ToDoubleBigAndRemoved');

  @override
  void run() {
    ints8ToDouble64BigAndRemoved([ 0x3f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]);
  }
}

class Ints32ToDoubleAndRemovedBenchmark extends BenchmarkBase {
  const Ints32ToDoubleAndRemovedBenchmark() : super('ints32ToDoubleAndRemoved');

  @override
  void run() {
    ints8ToDouble32AndRemoved([ 0x3f, 0xf0, 0x00, 0x00 ]);
  }
}
class Ints64ToDoubleAndRemovedBenchmark extends BenchmarkBase {
  const Ints64ToDoubleAndRemovedBenchmark() : super('ints64ToDoubleAndRemoved');

  @override
  void run() {
    ints8ToDouble64AndRemoved([ 0x3f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]);
  }
}

class Ints16ToInts8BigBenchmark extends BenchmarkBase {
  Ints16ToInts8BigBenchmark() : super('ints16ToInts8Big');

  final List<int> ints16 = <int>[
    0x0011, 0x2233, 0x4455, 0x6677, 0x8899, 0xaabb, 0xccdd, 0xeeff,
  ];

  @override
  void run() {
    ints16ToInts8Big(ints16);
  }
}
class Ints32ToInts8BigBenchmark extends BenchmarkBase {
  Ints32ToInts8BigBenchmark() : super('ints32ToInts8Big');

  final List<int> ints32 = <int>[ 0x00112233, 0x44556677, 0x8899aabb, 0xccddeeff ];

  @override
  void run() {
    ints32ToInts8Big(ints32);
  }
}

class Ints16ToInts8LittleBenchmark extends BenchmarkBase {
  Ints16ToInts8LittleBenchmark() : super('ints16ToInts8Little');

  final List<int> ints16 = <int>[
    0x0011, 0x2233, 0x4455, 0x6677, 0x8899, 0xaabb, 0xccdd, 0xeeff,
  ];

  @override
  void run() {
    ints16ToInts8Little(ints16);
  }
}
class Ints32ToInts8LittleBenchmark extends BenchmarkBase {
  Ints32ToInts8LittleBenchmark() : super('ints32ToInts8Little');

  final List<int> ints32 = <int>[ 0x00112233, 0x44556677, 0x8899aabb, 0xccddeeff ];

  @override
  void run() {
    ints32ToInts8Little(ints32);
  }
}

class Ints16ToInts8Benchmark extends BenchmarkBase {
  Ints16ToInts8Benchmark() : super('ints16ToInts8');

  final List<int> ints16 = <int>[
    0x0011, 0x2233, 0x4455, 0x6677, 0x8899, 0xaabb, 0xccdd, 0xeeff,
  ];

  @override
  void run() {
    ints16ToInts8(ints16);
  }
}
class Ints32ToInts8Benchmark extends BenchmarkBase {
  Ints32ToInts8Benchmark() : super('ints32ToInts8');

  final List<int> ints32 = <int>[ 0x00112233, 0x44556677, 0x8899aabb, 0xccddeeff ];

  @override
  void run() {
    ints32ToInts8(ints32);
  }
}

class GetAndRemoveRangeFromIntsBenchmark extends BenchmarkBase {
  const GetAndRemoveRangeFromIntsBenchmark() : super('getAndRemoveRangeFromInts');

  @override
  void run() {
    getAndRemoveRangeFromInts([ 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff ], 0, 32);
  }
}

void main() {
  IntToIntsLittleBenchmark().report();
  IntToIntsNLittleBenchmark().report();
  IntToInts16LittleBenchmark().report();
  IntToInts24LittleBenchmark().report();
  IntToInts32LittleBenchmark().report();
  IntToInts40LittleBenchmark().report();
  IntToInts48LittleBenchmark().report();
  IntToInts56LittleBenchmark().report();
  IntToInts64LittleBenchmark().report();

  IntToIntsBigBenchmark().report();
  IntToIntsNBigBenchmark().report();
  IntToInts16BigBenchmark().report();
  IntToInts24BigBenchmark().report();
  IntToInts32BigBenchmark().report();
  IntToInts40BigBenchmark().report();
  IntToInts48BigBenchmark().report();
  IntToInts56BigBenchmark().report();
  IntToInts64BigBenchmark().report();

  IntToIntsBenchmark().report();
  IntToIntsNBenchmark().report();
  IntToInts16Benchmark().report();
  IntToInts24Benchmark().report();
  IntToInts32Benchmark().report();
  IntToInts40Benchmark().report();
  IntToInts48Benchmark().report();
  IntToInts56Benchmark().report();
  IntToInts64Benchmark().report();

  IntsToIntLittleBenchmark().report();
  IntsNToIntLittleBenchmark().report();
  Ints16ToIntLittleBenchmark().report();
  Ints24ToIntLittleBenchmark().report();
  Ints8ToInt32LittleBenchmark().report();

  IntsToIntBigBenchmark().report();
  IntsNToIntBigBenchmark().report();
  Ints16ToIntBigBenchmark().report();
  Ints24ToIntBigBenchmark().report();
  Ints8ToInt32BigBenchmark().report();

  IntsToIntBenchmark().report();
  IntsNToIntBenchmark().report();
  Ints16ToIntBenchmark().report();
  Ints24ToIntBenchmark().report();
  Ints32ToIntBenchmark().report();

  IntsToIntLittleAndRemovedBenchmark().report();
  IntsNToIntLittleAndRemovedBenchmark().report();
  Ints16ToIntLittleAndRemovedBenchmark().report();
  Ints24ToIntLittleAndRemovedBenchmark().report();
  Ints32ToIntLittleAndRemovedBenchmark().report();

  IntsToIntBigAndRemovedBenchmark().report();
  IntsNToIntBigAndRemovedBenchmark().report();
  Ints16ToIntBigAndRemovedBenchmark().report();
  Ints24ToIntBigAndRemovedBenchmark().report();
  Ints32ToIntBigAndRemovedBenchmark().report();

  IntsToIntAndRemovedBenchmark().report();
  IntsNToIntAndRemovedBenchmark().report();
  Ints16ToIntAndRemovedBenchmark().report();
  Ints24ToIntAndRemovedBenchmark().report();
  Ints32ToIntAndRemovedBenchmark().report();

  BigIntToIntsLittleBenchmark().report();
  BigIntToIntsNLittleBenchmark().report();
  BigIntToInts64LittleBenchmark().report();
  BigIntToInts128LittleBenchmark().report();
  BigIntToInts256LittleBenchmark().report();

  BigIntToIntsBigBenchmark().report();
  BigIntToIntsNBigBenchmark().report();
  BigIntToInts64BigBenchmark().report();
  BigIntToInts128BigBenchmark().report();
  BigIntToInts256BigBenchmark().report();

  BigIntToIntsBenchmark().report();
  BigIntToIntsNBenchmark().report();
  BigIntToInts64Benchmark().report();
  BigIntToInts128Benchmark().report();
  BigIntToInts256Benchmark().report();

  IntsToBigIntLittleBenchmark().report();
  IntsNToBigIntLittleBenchmark().report();
  Ints64ToBigIntLittleBenchmark().report();
  Ints128ToBigIntLittleBenchmark().report();
  Ints256ToBigIntLittleBenchmark().report();

  IntsToBigIntBigBenchmark().report();
  IntsNToBigIntBigBenchmark().report();
  Ints64ToBigIntBigBenchmark().report();
  Ints128ToBigIntBigBenchmark().report();
  Ints256ToBigIntBigBenchmark().report();

  IntsToBigIntBenchmark().report();
  IntsNToBigIntBenchmark().report();
  Ints64ToBigIntBenchmark().report();
  Ints128ToBigIntBenchmark().report();
  Ints256ToBigIntBenchmark().report();

  IntsToBigIntLittleAndRemovedBenchmark().report();
  IntsNToBigIntLittleAndRemovedBenchmark().report();
  Ints64ToBigIntLittleAndRemovedBenchmark().report();
  Ints128ToBigIntLittleAndRemovedBenchmark().report();
  Ints256ToBigIntLittleAndRemovedBenchmark().report();

  IntsToBigIntBigAndRemovedBenchmark().report();
  IntsNToBigIntBigAndRemovedBenchmark().report();
  Ints64ToBigIntBigAndRemovedBenchmark().report();
  Ints128ToBigIntBigAndRemovedBenchmark().report();
  Ints256ToBigIntBigAndRemovedBenchmark().report();

  IntsToBigIntAndRemovedBenchmark().report();
  IntsNToBigIntAndRemovedBenchmark().report();
  Ints64ToBigIntAndRemovedBenchmark().report();
  Ints128ToBigIntAndRemovedBenchmark().report();
  Ints256ToBigIntAndRemovedBenchmark().report();

  DoubleToInts32Benchmark().report();
  DoubleToInts64Benchmark().report();

  Ints32ToDoubleLittleBenchmark().report();
  Ints64ToDoubleLittleBenchmark().report();

  Ints32ToDoubleBigBenchmark().report();
  Ints64ToDoubleBigBenchmark().report();

  Ints32ToDoubleBenchmark().report();
  Ints64ToDoubleBenchmark().report();

  Ints32ToDoubleLittleAndRemovedBenchmark().report();
  Ints64ToDoubleLittleAndRemovedBenchmark().report();

  Ints32ToDoubleBigAndRemovedBenchmark().report();
  Ints64ToDoubleBigAndRemovedBenchmark().report();

  Ints32ToDoubleAndRemovedBenchmark().report();
  Ints64ToDoubleAndRemovedBenchmark().report();

  Ints16ToInts8BigBenchmark().report();
  Ints32ToInts8BigBenchmark().report();

  Ints16ToInts8LittleBenchmark().report();
  Ints32ToInts8LittleBenchmark().report();

  Ints16ToInts8Benchmark().report();
  Ints32ToInts8Benchmark().report();

  GetAndRemoveRangeFromIntsBenchmark().report();
}
