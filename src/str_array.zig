const std = @import("std");
const raw = @import("internal/raw.zig");
const internal = @import("internal/internal.zig");
const log = std.log.scoped(.git);

const git = @import("git.zig");

pub const StrArray = extern struct {
    strings: [*c][*c]u8 = null,
    count: usize = 0,

    pub fn fromSlice(slice: []const [*:0]const u8) StrArray {
        return .{
            .strings = @intToPtr([*c][*c]u8, @ptrToInt(slice.ptr)),
            .count = slice.len,
        };
    }

    pub fn toSlice(self: StrArray) []const [*:0]const u8 {
        if (self.count == 0) return &[_][*:0]const u8{};
        return @ptrCast([*]const [*:0]const u8, self.strings)[0..self.count];
    }

    test {
        try std.testing.expectEqual(@sizeOf(raw.git_strarray), @sizeOf(StrArray));
        try std.testing.expectEqual(@bitSizeOf(raw.git_strarray), @bitSizeOf(StrArray));
    }

    comptime {
        std.testing.refAllDecls(@This());
    }
};

comptime {
    std.testing.refAllDecls(@This());
}