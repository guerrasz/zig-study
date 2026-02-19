const print = @import("std").debug.print;

pub fn main() void {
    const value: u8 = 2;

    switch (value) {
        0 => print("Value is zero\n", .{}),
        1 => print("Value is one\n", .{}),
        2 => print("Value is two\n", .{}),
        else => print("Value is something else\n", .{}),
    }
}
