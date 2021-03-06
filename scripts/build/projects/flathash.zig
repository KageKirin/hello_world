// flathash.zig generated by GENie

const std = @import("std");
const builtin = @import("builtin");
const Builder = std.build.Builder;

pub fn build(b: *Builder, target : std.zig.CrossTarget,  mode : std.builtin.Mode) void {
    if (mode == std.builtin.Mode.Debug) {
        const prj = b.addExecutable("flathash", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../../../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.linkLibCpp();
        prj.linkSystemLibrary("c++");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/include");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/grpc");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/src");
        prj.addLibPath("../bin/darwin");
        prj.addFrameworkDir("../bin/darwin");
        prj.defineCMacroRaw("DEBUG");
        prj.defineCMacroRaw("_DEBUG");
        prj.addCSourceFiles(&.{
            "../../../libs/flatbuffers/flatbuffers/src/flathash.cpp",
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
        prj.linkFramework("flatbuffers");
        prj.install();
    }
    if (mode == std.builtin.Mode.ReleaseFast) {
        const prj = b.addExecutable("flathash", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../../../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.linkLibCpp();
        prj.linkSystemLibrary("c++");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/include");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/grpc");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/src");
        prj.addLibPath("../bin/darwin");
        prj.addFrameworkDir("../bin/darwin");
        prj.defineCMacroRaw("RELEASE");
        prj.defineCMacroRaw("NDEBUG");
        prj.addCSourceFiles(&.{
            "../../../libs/flatbuffers/flatbuffers/src/flathash.cpp",
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
        prj.linkFramework("flatbuffers");
        prj.install();
    }
} // build
