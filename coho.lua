local parser = clink.arg.new_parser

local repos = {
    -- repos names
    -- platforms
    "android", "ios", "blackberry", "windows", "wp8", "firefoxos", "osx","ubuntu",
    "amazon-fireos", "bada", "bada-wac", "webos", "qt", "tizen",
    -- plugins
    "plugin-battery-status", "plugin-camera", "plugin-console", "plugin-contacts",
    "plugin-device-motion", "plugin-device-orientation", "plugin-device",
    "plugin-dialogs", "plugin-file-transfer", "plugin-file", "plugin-geolocation",
    "plugin-globalization", "plugin-inappbrowser", "plugin-media",
    "plugin-media-capture", "plugin-network-information", "plugin-splashscreen",
    "plugin-vibration", "plugin-statusbar", "cordova-plugins",
    --tools
    "docs", "mobile-spec", "js","app-hello-world", "cli", "plugman", "lib",
    "coho", "medic", "app-harness", "labs", "registry-web", "registry",
    "dist", "dist/dev", "private-pmc", "website",
    --repos groups
    "active-platform", "all", "auto", "cadence", "platform", "plugins",
    "release-repos", "tools"
}

local coho_parser = parser(
    {
        "repo-clone" .. parser({""},
            "-r" .. parser({"repos", "tools"}),
            "--r" .. parser({"repos", "tools"})
        ),
        "repo-update" .. parser(
            "--chdir",
            "-b", "--branch",
            "-r", "--repo",
            "--fetch",
            "-h", "--help"
        ),
        "repo-reset" .. parser(
            "--chdir",
            "-b", "--branch",
            "-r", "--repo",
            "-h", "--help"
        ),
        "repo-status" .. parser(
            "--chdir",
            "-b", "--branch",
            "-r", "--repo",
            "--branch2",
            "--diff",
            "-h", "--help"
        ),
        "repo-push",
        "list-repos",
        "prepare-release-branch",
        "tag-release",
        "audit-license-headers",
        "create-release-bug",
        "create-archive",
        "verify-archive",
        "print-tags",
        "verify-tags",
        "list-release-urls",
        "list-pulls",
        "last-week",
        "shortlog",
        "for-each"
    },
    "--chdir",
    "-h"
    )

clink.arg.register_parser("coho", coho_parser)