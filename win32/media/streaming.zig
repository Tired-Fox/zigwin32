//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (14)
//--------------------------------------------------------------------------------
pub const MF_TRANSFER_VIDEO_FRAME_FLAGS = enum(i32) {
    DEFAULT = 0,
    STRETCH = 1,
    IGNORE_PAR = 2,
};
pub const MF_TRANSFER_VIDEO_FRAME_DEFAULT = MF_TRANSFER_VIDEO_FRAME_FLAGS.DEFAULT;
pub const MF_TRANSFER_VIDEO_FRAME_STRETCH = MF_TRANSFER_VIDEO_FRAME_FLAGS.STRETCH;
pub const MF_TRANSFER_VIDEO_FRAME_IGNORE_PAR = MF_TRANSFER_VIDEO_FRAME_FLAGS.IGNORE_PAR;

pub const MF_MEDIASOURCE_STATUS_INFO = enum(i32) {
    FULLYSUPPORTED = 0,
    UNKNOWN = 1,
};
pub const MF_MEDIASOURCE_STATUS_INFO_FULLYSUPPORTED = MF_MEDIASOURCE_STATUS_INFO.FULLYSUPPORTED;
pub const MF_MEDIASOURCE_STATUS_INFO_UNKNOWN = MF_MEDIASOURCE_STATUS_INFO.UNKNOWN;

pub const FaceRectInfoBlobHeader = extern struct {
    Size: u32,
    Count: u32,
};

pub const FaceRectInfo = extern struct {
    Region: RECT,
    confidenceLevel: i32,
};

pub const FaceCharacterizationBlobHeader = extern struct {
    Size: u32,
    Count: u32,
};

pub const FaceCharacterization = extern struct {
    BlinkScoreLeft: u32,
    BlinkScoreRight: u32,
    FacialExpression: u32,
    FacialExpressionScore: u32,
};

pub const CapturedMetadataExposureCompensation = extern struct {
    Flags: u64,
    Value: i32,
};

pub const CapturedMetadataISOGains = extern struct {
    AnalogGain: f32,
    DigitalGain: f32,
};

pub const CapturedMetadataWhiteBalanceGains = extern struct {
    R: f32,
    G: f32,
    B: f32,
};

pub const MetadataTimeStamps = extern struct {
    Flags: u32,
    Device: i64,
    Presentation: i64,
};

pub const HistogramGrid = extern struct {
    Width: u32,
    Height: u32,
    Region: RECT,
};

pub const HistogramBlobHeader = extern struct {
    Size: u32,
    Histograms: u32,
};

pub const HistogramHeader = extern struct {
    Size: u32,
    Bins: u32,
    FourCC: u32,
    ChannelMasks: u32,
    Grid: HistogramGrid,
};

pub const HistogramDataHeader = extern struct {
    Size: u32,
    ChannelMask: u32,
    Linear: u32,
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (1)
//--------------------------------------------------------------------------------
const RECT = @import("../foundation.zig").RECT;

test {
    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        _ = @field(@This(), decl.name);
    }
}
