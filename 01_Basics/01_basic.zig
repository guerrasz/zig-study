//! This is a top-level comment

pub fn addNumbers(num1: u8, num2: u8) u16 {
    return num1 + num2;
}

/// doc comment
pub fn main() void {
    const number1: u8 = 16;
    var number2: u8 = 32;

    // comment
    number2 = 16;

    @import("std").debug.print("Number 1: {}. Number 2: {}\n", .{ number1, number2 });
}
