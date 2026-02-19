const print = @import("std").debug.print;

// functiom parameters are constant by default, so we need to use pointers to modify them
fn incrementNumber(num: *u8) void {
    num.* += 1;
}

pub fn main() !void {
    var number: u8 = 153;
    const ptr: *u8 = &number;
    const addr: usize = @intFromPtr(ptr);

    print("Value: {}, Address: {x}\n", .{ ptr.*, addr });

    incrementNumber(ptr);
    print("After increment: {}, Address: {x}\n", .{ ptr.*, addr });
}
