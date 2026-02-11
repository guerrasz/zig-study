const print = @import("std").debug.print; // Importing the print function from the standard library for easier use

pub fn main() void {
    var mutable: u8 = 10; // Mutable variable
    const immutable = 20; // Immutable variable type can be inferred

    mutable = 9;

    print("Mutable variable: {}\n", .{mutable});
    print("Immutable variable: {}\n", .{immutable});
}
