Texture2D tex;

cbuffer ModelViewProjectionConstantBuffer : register(b0)
{
    matrix model;
    matrix view;
    matrix projection;
    float4 timer;
    float4 resolution;
};

struct PixelShaderInput
{
	float4 pos : SV_POSITION;
	float3 color : COLOR0;
	float2 uv: TEXCOORD0;
};

float4 main(PixelShaderInput input) : SV_Target {

    // Return the final color for the pixel
    return float4(input.color, 1.0);
}
