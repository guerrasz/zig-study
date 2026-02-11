pub fn main() void {
    const unsigned_int: u8 = 42; // Unsigned integer
    const signed_int: i8 = -42; // Signed integer
    _ = signed_int; // Avoid unused variable warning

    const floatNum: f32 = 3.14; // Floating-point number
    @import("std").debug.print("Type of float {}\n", .{@TypeOf(floatNum)});

    const memory_addr: usize = @intFromPtr(&unsigned_int);
    @import("std").debug.print("Memory address of unsigned_int: {}\n", .{memory_addr});
}

fn infiniteLoop() noreturn {
    while (true) {}
}

fn logValue(value: anytype) void {
    @import("std").debug.print("Value: {any}\n", .{value});
}

fn logError(err: anyerror) void {
    @import("std").debug.print("Error: {any}\n", .{err});
}
