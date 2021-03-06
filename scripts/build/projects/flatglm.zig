// flatglm.zig generated by GENie

const std = @import("std");
const builtin = @import("builtin");
const Builder = std.build.Builder;

pub fn build(b: *Builder, target : std.zig.CrossTarget,  mode : std.builtin.Mode) void {
    if (mode == std.builtin.Mode.Debug) {
        const prj = b.addStaticLibrary("flatglm", null);
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
        prj.addIncludeDir("../../../src/flatglm/include");
        prj.addIncludeDir("../../../libs/glm/glm");
        prj.addIncludeDir("../../../src");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/include");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/grpc");
        prj.addIncludeDir("../../../libs/catch2/catch2/single_include");
        prj.defineCMacroRaw("DEBUG");
        prj.defineCMacroRaw("_DEBUG");
        prj.addCSourceFiles(&.{
            "../../../src/flatglm/src/glm_conversion.cpp",
            "../../../src/flatglm/src/glm_pack.cpp",
            "../../../src/flatglm/flatmath_static_check.cpp",
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
        const prj = b.addStaticLibrary("flatglm", null);
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
        prj.addIncludeDir("../../../src/flatglm/include");
        prj.addIncludeDir("../../../libs/glm/glm");
        prj.addIncludeDir("../../../src");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/include");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/grpc");
        prj.addIncludeDir("../../../libs/catch2/catch2/single_include");
        prj.defineCMacroRaw("RELEASE");
        prj.defineCMacroRaw("NDEBUG");
        prj.addCSourceFiles(&.{
            "../../../src/flatglm/src/glm_conversion.cpp",
            "../../../src/flatglm/src/glm_pack.cpp",
            "../../../src/flatglm/flatmath_static_check.cpp",
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
