const print = @import("std").debug.print;

pub fn main() !void {
    errdefer print("This will be printed if an error occurs\n", .{});
    defer print("This will be printed at the end of the function\n", .{});

    print("This will be printed first\n", .{});
    print("This will be printed second\n", .{});

    const err_union: anyerror!u8 = error.SomeError;
    try err_union;

    print("This will not be printed because of the error\n", .{});
}
