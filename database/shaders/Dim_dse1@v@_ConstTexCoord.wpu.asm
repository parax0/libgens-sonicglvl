//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampPow;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampPow                               s1       1
//   sampEmi                               s3       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, 1, 2, -1, -3
    def c2, 500, 5, 1024, 4
    def c3, 0.5, -0.5, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s10
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, -c1.y, -c1.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r0.x, c1.x
    add r1.z, r0.x, -c61.x
    cmp_pp r1.y, r1.z, c1.x, r1.y
    add r1.z, -c60.z, c60.w
    rcp r1.z, r1.z
    mul_sat r1.x, r1.z, r1.x
    add_pp r1.x, -r1.x, c1.x
    cmp_pp r0.x, -c61.x, r0.x, r1.x
    mul_pp r0.x, r1.y, r0.x
    rcp r1.x, v3.w
    mul r1.xy, r1.x, v3
    mad r1.xy, r1, c1.y, c1.z
    abs_sat r1.xy, r1
    add_sat r1.xy, r1, -c65.x
    mul r1.xy, r1, c65.y
    max r2.x, r1.x, r1.y
    max r1.x, v3.z, c0.w
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c0.w, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    lrp_pp r2.y, v4.z, c1.x, r1.x
    lrp_pp r1.x, r2.x, c1.x, r2.y
    texld_pp r2, v0.zwzw, s10
    mul_pp r1.y, r1.x, r2.w
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r3.xyz, -c50, v1
    dp3 r1.w, r3, r3
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    add r1.w, r2.w, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r4.xyz, -c46, v1
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r3.w, -c48.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.zw, -r1, c1.x
    add r2.w, -c40.z, c40.w
    rcp r2.w, r2.w
    add r5.xyz, -c38, v1
    dp3 r3.w, r5, r5
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r5.xyz, r3.w, r5
    add r3.w, r4.w, -c40.z
    mul_sat r2.w, r2.w, r3.w
    add_pp r2.w, -r2.w, c1.x
    add r3.w, -c44.z, c44.w
    rcp r3.w, r3.w
    add r6.xyz, -c42, v1
    dp3 r4.w, r6, r6
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r6.xyz, r4.w, r6
    add r4.w, r5.w, -c44.z
    mul_sat r3.w, r3.w, r4.w
    add_pp r3.w, -r3.w, c1.x
    texld_pp r7, v0, s1
    mul_pp r7.xy, r7.x, c20.yzzw
    mul_pp r7.xy, r7, c2
    mul_pp r8.xyz, r7.y, c43
    max_pp r4.w, r7.x, c1.x
    min r5.w, r4.w, c2.z
    add_pp r7.xzw, c22.xyyz, -v1.xyyz
    dp3_pp r4.w, r7.xzww, r7.xzww
    rsq_pp r4.w, r4.w
    mad_pp r9.xyz, r7.xzww, r4.w, -r6
    nrm_pp r10.xyz, r9
    nrm_pp r9.xyz, v2
    dp3_sat_pp r6.w, r10, r9
    pow r8.w, r6.w, r5.w
    mul_pp r8.xyz, r8.w, r8
    mul_pp r8.xyz, r3.w, r8
    mul_pp r10.xyz, r7.y, c39
    mad_pp r11.xyz, r7.xzww, r4.w, -r5
    dp3_pp r5.x, r9, -r5
    nrm_pp r12.xyz, r11
    dp3_sat_pp r5.y, r12, r9
    pow r6.w, r5.y, r5.w
    mul_pp r10.xyz, r6.w, r10
    mad_pp r8.xyz, r2.w, r10, r8
    mul_pp r10.xyz, r7.y, c47
    mad_pp r11.xyz, r7.xzww, r4.w, -r4
    dp3_pp r4.x, r9, -r4
    nrm_pp r12.xyz, r11
    dp3_sat_pp r4.y, r12, r9
    pow r6.w, r4.y, r5.w
    mul_pp r10.xyz, r6.w, r10
    mad_pp r8.xyz, r1.w, r10, r8
    mul_pp r10.xyz, r7.y, c51
    mad_pp r11.xyz, r7.xzww, r4.w, -r3
    dp3_pp r3.x, r9, -r3
    nrm_pp r12.xyz, r11
    dp3_sat_pp r3.y, r12, r9
    pow r4.y, r3.y, r5.w
    mul_pp r10.xyz, r4.y, r10
    mad_pp r8.xyz, r1.z, r10, r8
    mul_pp r10.xyz, r7.y, c37
    mad_pp r11.xyz, r7.xzww, r4.w, -c10
    mad_pp r4.yzw, r7.xxzw, r4.w, -r0
    dp3_pp r0.y, r9, -r0.yzww
    nrm_pp r12.xyz, r4.yzww
    dp3_sat_pp r0.z, r12, r9
    pow r3.y, r0.z, r5.w
    nrm_pp r12.xyz, r11
    dp3_sat_pp r0.z, r12, r9
    pow r3.z, r0.z, r5.w
    mul_pp r4.yzw, r3.z, r10.xxyz
    mad_pp r4.yzw, r4, r1.y, r8.xxyz
    mul_pp r5.yzw, c59.w, c59.xxyz
    mul_pp r5.yzw, r7.y, r5
    mul_pp r5.yzw, r3.y, r5
    mad_pp r4.yzw, r0.x, r5, r4
    mul_pp r4.yzw, r4, c18.xxyz
    mul_pp r4.yzw, r4, v2.w
    dp3_pp r0.z, r9, -r6
    mul_pp r5.yzw, r0.z, c43.xxyz
    cmp_pp r5.yzw, r0.z, r5, c0.w
    mul_pp r3.yzw, r3.w, r5
    mul_pp r5.yzw, r5.x, c39.xxyz
    cmp_pp r5.xyz, r5.x, r5.yzww, c0.w
    mad_pp r3.yzw, r2.w, r5.xxyz, r3
    mul_pp r5.xyz, r4.x, c47
    cmp_pp r5.xyz, r4.x, r5, c0.w
    mad_pp r3.yzw, r1.w, r5.xxyz, r3
    mul_pp r5.xyz, r3.x, c51
    cmp_pp r5.xyz, r3.x, r5, c0.w
    mad_pp r3.xyz, r1.z, r5, r3.yzww
    dp3_pp r0.z, r9, -c10
    mul r5.xyz, r0.z, c36
    mul_pp r1.yzw, r1.y, r5.xxyz
    cmp_pp r1.yzw, r0.z, r1, c0.w
    add_pp r1.yzw, r3.xxyz, r1
    mul_pp r3.xyz, c58.w, c58
    mul_pp r3.xyz, r0.y, r3
    cmp_pp r0.yzw, r0.y, r3.xxyz, c0.w
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    mul_pp r1.yzw, r2.xxyz, r2.xxyz
    dp3_pp r0.w, r1.yzww, c0
    mad_pp r1.yzw, r2.xxyz, r2.xxyz, -r0.w
    mad_sat_pp r1.yzw, r1, c71.w, r0.w
    mul_pp r2.xyz, r1.yzww, c70
    mul r2.xyz, r2, c70.w
    mad r1.yzw, r1, c70.xxyz, -r2.xxyz
    mad_pp r1.xyz, r1.x, r1.yzww, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r4.yzww
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v5.w
    mul_pp r1.w, r0.w, c21.x
    mul r2, r9.y, c91
    mad r2, r9.x, c90, r2
    mad r2, r9.z, c92, r2
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r2.xy, r0.w, r2
    mad_pp r2.xy, r2, c3, c3.x
    texld_pp r2, r2, s3
    mad_pp r0.xyz, r2, c17, r0
    mul_pp r1.xyz, r0, v5
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.w
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 217 instruction slots used (5 texture, 212 arithmetic)
