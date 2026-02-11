const print = @import("std").debug.print;

pub fn main() void {
    const comptime_known: u8 = 10;

    comptime var mutable_comptime_know = 0;
    mutable_comptime_know = comptime_known;
}
