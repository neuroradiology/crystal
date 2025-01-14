require "spec"
require "crystal/compiler_rt/shift"
require "./spec_helper"

# Ported from https://github.com/llvm/llvm-project/blob/ce59ccd04023cab3a837da14079ca2dcbfebb70c/compiler-rt/test/builtins/Unit/ashlti3_test.c

it ".__ashlti3" do
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 0).should eq make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 1).should eq make_ti(0xFDB97530ECA8642Bu64, 0xFDB97530ECA8642Au64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 2).should eq make_ti(0xFB72EA61D950C857u64, 0xFB72EA61D950C854u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 3).should eq make_ti(0xF6E5D4C3B2A190AFu64, 0xF6E5D4C3B2A190A8u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 4).should eq make_ti(0xEDCBA9876543215Fu64, 0xEDCBA98765432150u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 28).should eq make_ti(0x876543215FEDCBA9u64, 0x8765432150000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 29).should eq make_ti(0x0ECA8642BFDB9753u64, 0x0ECA8642A0000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 30).should eq make_ti(0x1D950C857FB72EA6u64, 0x1D950C8540000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 31).should eq make_ti(0x3B2A190AFF6E5D4Cu64, 0x3B2A190A80000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 32).should eq make_ti(0x76543215FEDCBA98u64, 0x7654321500000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 33).should eq make_ti(0xECA8642BFDB97530u64, 0xECA8642A00000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 34).should eq make_ti(0xD950C857FB72EA61u64, 0xD950C85400000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 35).should eq make_ti(0xB2A190AFF6E5D4C3u64, 0xB2A190A800000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 36).should eq make_ti(0x6543215FEDCBA987u64, 0x6543215000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 60).should eq make_ti(0x5FEDCBA987654321u64, 0x5000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 61).should eq make_ti(0xBFDB97530ECA8642u64, 0xA000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 62).should eq make_ti(0x7FB72EA61D950C85u64, 0x4000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 63).should eq make_ti(0xFF6E5D4C3B2A190Au64, 0x8000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 64).should eq make_ti(0xFEDCBA9876543215u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 65).should eq make_ti(0xFDB97530ECA8642Au64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 66).should eq make_ti(0xFB72EA61D950C854u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 67).should eq make_ti(0xF6E5D4C3B2A190A8u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 68).should eq make_ti(0xEDCBA98765432150u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 92).should eq make_ti(0x8765432150000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 93).should eq make_ti(0x0ECA8642A0000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 94).should eq make_ti(0x1D950C8540000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 95).should eq make_ti(0x3B2A190A80000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 96).should eq make_ti(0x7654321500000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 97).should eq make_ti(0xECA8642A00000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 98).should eq make_ti(0xD950C85400000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 99).should eq make_ti(0xB2A190A800000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 100).should eq make_ti(0x6543215000000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 124).should eq make_ti(0x5000000000000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 125).should eq make_ti(0xA000000000000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 126).should eq make_ti(0x4000000000000000u64, 0x0000000000000000u64)
  __ashlti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 127).should eq make_ti(0x8000000000000000u64, 0x0000000000000000u64)
end
