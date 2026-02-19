const print = @import("std").debug.print;

const IOError = error{ FileNotFound, PermissionDenied, DiskFull, ValueIsNull };

const PrintError = error{ValueIsNull};

// error union return value
fn writeToFile() IOError!u8 {
    return 5;
}

fn logError(err: anyerror) void {
    print("Error: {}\n", .{err});
}

pub fn main() void {
    print("Error: {}\n", .{IOError.FileNotFound});

    // NOTE: erros with the same name but different types are considered same errors
    print("Errors are equal: {}\n", .{PrintError.ValueIsNull == IOError.ValueIsNull});

    var int_or_error = writeToFile();
    int_or_error = IOError.FileNotFound; // assign an error to the variable

    print("Result: {!}\n", .{int_or_error});

    if (int_or_error) |value| {
        print("Value: {}\n", .{value});
    } else |err| {
        print("Error: {}\n", .{err});
    }

    logError(IOError.DiskFull);
    logError(IOError.FileNotFound);
    logError(PrintError.ValueIsNull);
    logError(error.SomeError);
}
