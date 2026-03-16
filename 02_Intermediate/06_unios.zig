const print = @import("std").debug.print;

const SimpleUnion = union { integer: u8, boolean: bool };

const DataTypes = enum { integer, float, boolean };
const TaggedUnion = union(DataTypes) { integer: u8, float: f32, boolean: bool };

pub fn main() void {
    var value: SimpleUnion = .{ .integer = 42 };
    print("Integer value: {}\n", .{value.integer});

    value = .{ .boolean = true };
    print("Boolean value: {}\n", .{value.boolean});

    // NOTE: Tagged unions can display active fields more easily due to their tag
    var taggedValue: TaggedUnion = .{ .integer = 100 };
    print("Tagged Union Integer: {}\n", .{taggedValue});

    taggedValue = .{ .float = 3.14 };
    print("Tagged Union Float: {}\n", .{taggedValue});
}
