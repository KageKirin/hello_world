// badass.gitrev.zig generated by GENie

const std = @import("std");
const builtin = @import("builtin");
const Builder = std.build.Builder;

pub fn build(b: *Builder, target : std.zig.CrossTarget,  mode : std.builtin.Mode) void {
    if (mode == std.builtin.Mode.Debug) {
        const prj = b.addStaticLibrary("badass.gitrev", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.defineCMacroRaw("DEBUG");
        prj.defineCMacroRaw("_DEBUG");
        prj.defineCMacroRaw("WITH_DEBUG_PRINT");
        prj.defineCMacroRaw("PLATFORM_MACOS");
        prj.addCSourceFiles(&.{
            "../../../src/gitrev.c",
        },
        &.{
            "-g",
            "-Wall -Wextra",
            "-fdiagnostics-fixit-info",
            "-fdiagnostics-color",
            "-fdiagnostics-show-note-include-stack",
            "-Wextra-tokens",
            "-Wno-undef",
            "-fblocks",
            "-Rpass=inline",
        });
    }
    if (mode == std.builtin.Mode.ReleaseFast) {
        const prj = b.addStaticLibrary("badass.gitrev", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.defineCMacroRaw("RELEASE");
        prj.defineCMacroRaw("NDEBUG");
        prj.defineCMacroRaw("PLATFORM_MACOS");
        prj.addCSourceFiles(&.{
            "../../../src/gitrev.c",
        },
        &.{
            "-Os",
            "-Wall -Wextra",
            "-fdiagnostics-fixit-info",
            "-fdiagnostics-color",
            "-fdiagnostics-show-note-include-stack",
            "-Wextra-tokens",
            "-Wno-undef",
            "-fblocks",
            "-Rpass=inline",
        });
    }
} // build
