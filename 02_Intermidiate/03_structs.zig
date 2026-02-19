const print = @import("std").debug.print;

const Point = struct {
    x: u8,
    y: u8,
    z: u8,

    const dimnesions = 3;

    fn init(x: u8, y: u8, z: u8) Point {
        return Point{ .x = x, .y = y, .z = z };
    }

    fn printPoint(this: Point) void {
        print("Point: {d}, {d}, {d}\n", .{ this.x, this.y, this.z });
    }
};

pub fn main() void {
    const origin: Point = Point{ .x = 0, .y = 0, .z = 0 };
    origin.printPoint();
    const point1: Point = Point{ .x = 1, .y = 2, .z = 3 };
    point1.printPoint();
    const point2: Point = Point.init(4, 5, 6);
    point2.printPoint();

    const tuple1 = .{ 1, 2, 3 };
    print("Tuple: {d}, {d}, {d}\n", .{ tuple1[0], tuple1[1], tuple1[2] });
}
