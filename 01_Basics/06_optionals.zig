const print = @import("std").debug.print;

pub fn main() void {
    var optional_int: ?u8 = null;
    print("Optional integer (null): {?}\n", .{optional_int});
    optional_int = 42;
    print("Optional integer (value): {?}\n", .{optional_int});

    var optional_bool: ?bool = null;
    _ = &optional_bool;

    const unrwap_bool = optional_bool orelse false;
    print("Unwrapped optional bool (default false): {}\n", .{unrwap_bool});
}
