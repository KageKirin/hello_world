// stb.zig generated by GENie

const std = @import("std");
const builtin = @import("builtin");
const Builder = std.build.Builder;

pub fn build(b: *Builder, target : std.zig.CrossTarget,  mode : std.builtin.Mode) void {
    if (mode == std.builtin.Mode.Debug) {
        const prj = b.addStaticLibrary("stb", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/stb");
        prj.defineCMacroRaw("DEBUG");
        prj.defineCMacroRaw("_DEBUG");
        prj.addCSourceFiles(&.{
            "../../../libs/stb/stb_image_impl.c",
            "../../../libs/stb/stb_image_write_impl.c",
            "../../../libs/stb/stb_sprintf_impl.c",
        },
        &.{
            "-g",
            "-Wall -Wextra",
            "-fdiagnostics-fixit-info",
            "-fdiagnostics-color",
            "-fdiagnostics-show-note-include-stack",
            "-Wextra-tokens",
            "-Wno-undef",
        });
    }
    if (mode == std.builtin.Mode.ReleaseFast) {
        const prj = b.addStaticLibrary("stb", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/stb");
        prj.defineCMacroRaw("RELEASE");
        prj.defineCMacroRaw("NDEBUG");
        prj.addCSourceFiles(&.{
            "../../../libs/stb/stb_image_impl.c",
            "../../../libs/stb/stb_image_write_impl.c",
            "../../../libs/stb/stb_sprintf_impl.c",
        },
        &.{
            "-Os",
            "-Wall -Wextra",
            "-fdiagnostics-fixit-info",
            "-fdiagnostics-color",
            "-fdiagnostics-show-note-include-stack",
            "-Wextra-tokens",
            "-Wno-undef",
        });
    }
} // build
