const print = @import("std").debug.print;

pub fn main() void {
    const block1 = blk: {
        const x = 10;
        const y = 20;
        const inner_block = inner_blk: {
            // if x < y outer block breaks with value of -1
            if (x < y) {
                break :blk -1;
            } else {
                break :inner_blk y * 2; // This won't execute
            }
        };
        _ = inner_block;
        break :blk x + y; // block1 evaluates to 30
    };

    print("The result of block1 is: {}\n", .{block1});
}
