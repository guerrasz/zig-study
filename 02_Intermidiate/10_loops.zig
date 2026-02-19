const print = @import("std").debug.print;

pub fn main() !void {
    var i: u8 = 0;

    while (i < 10) : (i += 1) {
        print("i: {}\n", .{i});
        if (i == 5) {
            print("Breaking out of the loop at i = {}\n", .{i});
            break;
        }
    }

    const arr: [5]u8 = [5]u8{ 1, 2, 3, 4, 5 };

    for (arr) |value| {
        print("Value: {}\n", .{value});
    }

    const for_val: u8 = for (0..8) |val| {
        if (val % 2 == 0) break 12;
        print("Odd value: {}\n", .{val});
    } else blk: {
        print("Loop completed without breaking\n", .{});
        break :blk 0; // Return 0 if the loop completes without breaking
    };

    print("for_val: {}\n", .{for_val});
}
