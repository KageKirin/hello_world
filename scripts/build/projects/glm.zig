// glm.zig generated by GENie

const std = @import("std");
const builtin = @import("builtin");
const Builder = std.build.Builder;

pub fn build(b: *Builder, target : std.zig.CrossTarget,  mode : std.builtin.Mode) void {
    if (mode == std.builtin.Mode.Debug) {
        const prj = b.addStaticLibrary("glm", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.linkLibCpp();
        prj.linkSystemLibrary("c++");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/glm/glm");
        prj.defineCMacroRaw("DEBUG");
        prj.defineCMacroRaw("_DEBUG");
        prj.defineCMacroRaw("GLM_FORCE_SWIZZLE=1");
        prj.addCSourceFiles(&.{
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
        const prj = b.addStaticLibrary("glm", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.linkLibCpp();
        prj.linkSystemLibrary("c++");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/glm/glm");
        prj.defineCMacroRaw("RELEASE");
        prj.defineCMacroRaw("NDEBUG");
        prj.defineCMacroRaw("GLM_FORCE_SWIZZLE=1");
        prj.addCSourceFiles(&.{
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
