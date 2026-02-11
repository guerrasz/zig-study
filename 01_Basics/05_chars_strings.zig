const print = @import("std").debug.print;

pub fn main() void {
    const a_char: u8 = 'a';
    print("Character: {c}\n", .{a_char});

    const a_string = "This is a string";
    print("String: {s}\n", .{a_string});

    print("Type of a string: {any}\n", .{@TypeOf(a_string)});
}
