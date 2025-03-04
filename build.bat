glslc shader.glsl.frag -o shader.spv.frag
if %errorlevel% neq 0 exit /b 1

glslc shader.glsl.vert -o shader.spv.vert
if %errorlevel% neq 0 exit /b 1

odin build . -debug -out:sdl3odin.exe
if %errorlevel% neq 0 exit /b 1

if "%~1" == "run" (
	sdl3odin.exe
)
