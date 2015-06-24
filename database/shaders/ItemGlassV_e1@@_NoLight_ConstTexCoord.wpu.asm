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
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
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
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, 500, 5, 1024, 0.5
    def c2, -1, 1, 0, 0.5
    def c3, 0.25, 4, 0, 0
    def c4, 1, 2, -1, -3
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_2d s0
    dcl_2d s2
    dcl_2d s5
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v3.w
    mul r0.xy, r0.x, v3
    mad r0.xy, r0, c4.y, c4.z
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v3.z, c0.w
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c0.w, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v4.z, c4.x, r0.x
    lrp_pp r0.x, r1.x, c4.x, r1.y
    texld_pp r1, v0.zwzw, s10
    mul r0.y, r0.x, r1.w
    add_pp r0.z, -c61.z, c61.y
    rcp_pp r0.z, r0.z
    add r2.xyz, -c22, v1
    dp3 r0.w, r2, r2
    rsq r0.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    rcp r0.w, r0.w
    add r0.w, r0.w, -c60.z
    dp3_pp r1.w, r2, c23
    add_pp r1.w, r1.w, -c61.z
    mul_sat_pp r0.z, r0.z, r1.w
    mad_pp r1.w, r0.z, -c4.y, -c4.w
    mul_pp r0.z, r0.z, r0.z
    mul_pp r0.z, r0.z, r1.w
    pow_sat_pp r1.w, r0.z, c61.w
    mov r3.x, c4.x
    add r0.z, r3.x, -c61.x
    cmp_pp r0.z, r0.z, c4.x, r1.w
    add r1.w, -c60.z, c60.w
    rcp r1.w, r1.w
    mul_sat r0.w, r0.w, r1.w
    add_pp r0.w, -r0.w, c4.x
    cmp_pp r0.w, -c61.x, r3.x, r0.w
    mul_pp r0.z, r0.z, r0.w
    mul_pp r3.yzw, c59.w, c59.xxyz
    mov_pp r4.xy, c1
    mul_pp r4.xy, r4, c20.yzzw
    mul_pp r3.yzw, r3, r4.y
    max_pp r0.w, r4.x, c4.x
    mul_pp r4.xyz, r4.y, c37
    min r1.w, r0.w, c1.z
    add_pp r5, c22.xyzx, -v1.xyzx
    dp3_pp r0.w, r5.yzww, r5.yzww
    rsq_pp r0.w, r0.w
    mad_pp r6.xyz, r5, r0.w, -r2
    nrm_pp r7.xyz, r6
    nrm r6, v2.xyzx
    dp3_sat_pp r2.w, r7, r6
    pow r4.w, r2.w, r1.w
    mul_pp r3.yzw, r3, r4.w
    mul_pp r3.yzw, r0.z, r3
    mad_pp r7.xyz, r5, r0.w, -c10
    mul r5, r0.w, r5
    nrm_pp r8.xyz, r7
    dp3_sat_pp r0.w, r8, r6
    pow r2.w, r0.w, r1.w
    mul_pp r4.xyz, r2.w, r4
    mad_pp r3.yzw, r4.xxyz, r0.y, r3
    dp3 r0.w, r5.yzww, r6.yzww
    add r1.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    add_pp r0.w, -r0.w, c4.x
    mad r4, r1.w, r6, -r5
    mad r5, r4.wyzw, c2.xxyz, c2.zzzw
    mul r7, r4, c2.yxxz
    cmp r4, r4.z, r5, r7
    add r1.w, r4.z, c4.x
    rcp r1.w, r1.w
    mad r4.xy, r4.yxzw, r1.w, c4.x
    mad_pp r5.x, r4.y, c3.x, r4.w
    mul_pp r5.y, r4.x, c1.w
    texld_pp r4, r5, s5
    mul r5.xyz, r4, c63.x
    mad_pp r4.xyz, r5, r4.w, r4
    texld_pp r5, v0, s2
    mul_pp r4.xyz, r4, r5.w
    mul r1.w, c64.z, c64.x
    mov r7.xz, c64
    mad r2.w, r7.x, -r7.z, r7.z
    mad_pp r1.w, r0.y, r2.w, r1.w
    mul_pp r4.xyz, r1.w, r4
    mad_pp r3.yzw, r3, c18.xxyz, r4.xxyz
    mul_pp r3.yzw, r5.xxyz, r3
    mul_pp r1.w, r0.w, r0.w
    mul_pp r1.w, r1.w, r1.w
    mul_pp r0.w, r0.w, r1.w
    lrp_pp r1.w, r0.w, r3.x, c62.x
    mul_pp r0.w, r1.w, c62.y
    mul_pp r3.xyz, r0.w, r3.yzww
    mul_pp r4.xyz, r1, r1
    dp3_pp r0.w, r4, c0
    mad_pp r1.xyz, r1, r1, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r4.xyz, r1, c17
    mul r4.xyz, r4, c70.w
    mad r1.xyz, r1, c17, -r4
    mad_pp r1.xyz, r0.x, r1, r4
    dp3_pp r0.x, r6.wyzw, -c10
    dp3_pp r0.w, r6.wyzw, -r2
    mul r2.xyz, r0.x, c36
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r2.xyz, r0.x, r2, c0.w
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r0.w, r4
    cmp_pp r0.xyw, r0.w, r4.xyzz, c0.w
    mad_pp r0.xyz, r0.z, r0.xyww, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r3
    dp3_pp r1.x, r3, r3
    mul_pp r1.y, r1.w, c16.w
    mul_pp r1.y, r1.y, r1.y
    max_pp r2.x, r1.y, r1.x
    rsq_pp r1.x, r2.x
    rcp_pp r1.x, r1.x
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 141 instruction slots used (5 texture, 136 arithmetic)
