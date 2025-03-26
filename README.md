To run on Windows:

```
build.bat run
```

To run on MacOS:

```
glslc shader.glsl.frag -o shader.spv.frag
glslc shader.glsl.vert -o shader.spv.vert
spirv-cross --msl shader.spv.vert --output shader.metal.vert
spirv-cross --msl shader.spv.frag --output shader.metal.frag
```
