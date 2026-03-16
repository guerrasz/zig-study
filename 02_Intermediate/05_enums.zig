const print = @import("std").debug.print;

const Direction = enum {
    up,
    down,
    left,
    right,
};

fn movePlayer(direction: Direction) void {
    if (direction == Direction.up) {
        print("Moving up\n", .{});
    } else if (direction == Direction.down) {
        print("Moving down\n", .{});
    } else if (direction == Direction.left) {
        print("Moving left\n", .{});
    } else if (direction == Direction.right) {
        print("Moving right\n", .{});
    }
}

const OrderStatus = enum {
    pending,
    shipped,
    delivered,
    cancelled,

    fn confirmOrder(this: *OrderStatus) void {
        this.* = .shipped;
        print("Order confirmed, status updated to shipped\n", .{});
    }
};

pub fn main() void {
    movePlayer(Direction.up);
    movePlayer(Direction.down);
    movePlayer(Direction.left);
    movePlayer(Direction.right);

    var orderStatus: OrderStatus = .pending;
    orderStatus.confirmOrder();
}
