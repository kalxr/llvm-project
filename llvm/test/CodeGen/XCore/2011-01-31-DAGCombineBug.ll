; RUN: llc < %s -mtriple=xcore
%struct.st = type <{ i8, i32, i8, i32, i8, i32 }>

@x = external global %struct.st, align 4

define i32 @test_entry() nounwind {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.st, ptr @x, i32 0, i32 3), align 2
  ret i32 %0
}
