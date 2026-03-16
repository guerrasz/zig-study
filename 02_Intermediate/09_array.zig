const print = @import("std").debug.print;

pub fn main() !void {
    const arr: [5]u8 = [5]u8{ 1, 2, 3, 4, 5 };

    // Accessing array elements
    print("First element: {}\n", .{arr[0]});
    print("Second element: {}\n", .{arr[1]});

    // Iterating over the array
    for (arr) |value| {
        print("Value: {}\n", .{value});
    }

    // Modifying an array element
    var mutableArr = arr; // Create a mutable copy of the array
    mutableArr[0] = 10;
    print("Modified first element: {}\n", .{mutableArr[0]});

    const matrix_2x3: [2][3]u8 = [2][3]u8{
        [3]u8{ 1, 2, 3 },
        [3]u8{ 4, 5, 6 },
    };

    // iterating over a 2D array
    for (matrix_2x3) |row| {
        for (row) |value| {
            print("Value: {}\n", .{value});
        }
    }

    const slice = arr[1..4]; // Create a slice of the array from index 1 to 3
    print("Slice: ", .{});
    for (slice) |value| {
        print("{} ", .{value});
    }
    print("\n", .{});
}
