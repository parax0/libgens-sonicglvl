//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   float4 g_ForceAlphaColor;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ViewportSize;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   g_Diffuse                             c16      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//

    ps_3_0
    def c0, 0.5, 4, 0, 0
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord5_pp v2.xy
    dcl_color_pp v3
    dcl vPos.y
    dcl_2d s0
    frc r0.x, c26.x
    cmp r0.y, -r0.x, c1.x, c1.y
    add r0.x, -r0.x, c26.x
    mov_pp r1.x, c1.x
    cmp r0.y, c26.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c1
    cmp r1.xy, -r0_abs.x, v0, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp r0.w, r0.w, v3.w
    mul_pp r1.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r2.x, c86.x
    mad r0.w, r0.w, c24.w, -r2.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r2.xyz, r0.w, r0, c1.y
    mul_pp r0.xyz, r2, c16
    mul_pp r1.xyz, r0, v3
    mul_pp r0, r1, c89
    min_pp r1, r0, c0.y
    mul_pp r0.xyz, c75, v2.y
    mad_pp oC0.xyz, r1, v2.x, r0
    mov_pp oC0.w, r1.w

// approximately 27 instruction slots used (1 texture, 26 arithmetic)
