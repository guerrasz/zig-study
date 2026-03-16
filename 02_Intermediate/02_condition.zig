const print = @import("std").debug.print;

pub fn main() void {
    const a: i32 = 10;
    const b: i32 = 20;

    if (a < b) {
        print("a is less than b\n", .{});
    } else if (a > b) {
        print("a is greater than b\n", .{});
    } else {
        print("a is equal to b\n", .{});
    }

    // Using a conditional expression
    const max = if (a > b) a else b;
    print("The maximum value is: {}\n", .{max});

    // if with optional variables
    const maybeValue: ?i32 = null; // This can be either an i32 or null
    const anotherValue: ?i32 = 42;
    if (maybeValue) |value| {
        print("The value is: {}\n", .{value});
    } else {
        print("No value provided\n", .{});
    }

    if (anotherValue) |*value| {
        print("The another value is: {}\n", .{value.* + 1});
    } else {
        print("No another value provided\n", .{});
    }
}
