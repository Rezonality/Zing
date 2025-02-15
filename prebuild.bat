@echo off

echo %Time%

if not exist "vcpkg\vcpkg.exe" (
    cd vcpkg
    call bootstrap-vcpkg.bat -disableMetrics
    cd %~dp0
)

cd vcpkg
echo Installing Libraries
vcpkg install ableton-link tinydir cppcodec concurrentqueue portaudio stb fmt clipp glm sdl3[vulkan] catch2 --triplet x64-windows-static-md --recurse
cd %~dp0
echo %Time%

