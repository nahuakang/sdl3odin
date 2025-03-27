#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

struct UBO
{
    float4x4 mvp;
};

struct main0_out
{
    float4 out_color [[user(locn0)]];
    float2 out_uv [[user(locn1)]];
    float4 gl_Position [[position]];
};

struct main0_in
{
    float3 position [[attribute(0)]];
    float4 color [[attribute(1)]];
    float2 uv [[attribute(2)]];
};

vertex main0_out main0(main0_in in [[stage_in]], constant UBO& _19 [[buffer(0)]])
{
    main0_out out = {};
    out.gl_Position = _19.mvp * float4(in.position, 1.0);
    out.out_color = in.color;
    out.out_uv = in.uv;
    return out;
}

