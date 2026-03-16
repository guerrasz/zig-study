const print = @import("std").debug.print;

fn LinkedList(comptime T: type) type {
    return struct { data: T, next: ?*LinkedList(T) = null };
}

pub fn main() void {
    const U8List = LinkedList(u8);
    var head: U8List = .{ .data = 1, .next = null };
    var second: U8List = .{ .data = 2, .next = null };
    head.next = &second;
    print("Head: {}\n", .{head});
}
