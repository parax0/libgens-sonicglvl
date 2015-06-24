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
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
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
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      2
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   sampEmi                               s4       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9
    dcl vPos.y
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_cube s5
    dcl_2d s7
    dcl_2d s13
    max r0.x, v4.z, c2.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c2.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    max r0.y, v5.z, c2.x
    add r0.z, r0.y, -v5.w
    cmp r1.z, r0.z, c2.x, r0.y
    mov r1.xyw, v5
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v6.z, c2.y, r1.x
    lrp_pp r0.y, v6.z, c2.y, r2.x
    rcp r0.z, v4.w
    mul r0.zw, r0.z, v4.xyxy
    mad r0.zw, r0, c0.y, c0.z
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c2.y, r0.y
    lrp_pp r2.y, r1.x, c2.y, r0.x
    mul r0.x, r2.x, c77.w
    add_pp r0.y, -c61.z, c61.y
    rcp_pp r0.y, r0.y
    add r1.xyz, -c22, v2
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul_pp r1.xyz, r0.z, r1
    rcp r0.z, r0.z
    add r0.z, r0.z, -c60.z
    dp3_pp r0.w, r1, c23
    add_pp r0.w, r0.w, -c61.z
    mul_sat_pp r0.y, r0.y, r0.w
    mad_pp r0.w, r0.y, -c0.y, -c0.w
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov r3.xy, c2
    add r0.y, r3.y, -c61.x
    cmp_pp r0.y, r0.y, c2.y, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c2.y
    cmp_pp r0.z, -c61.x, r3.y, r0.z
    mul_pp r0.y, r0.y, r0.z
    frc r0.zw, c26.xyxw
    cmp r2.xz, -r0.zyww, c2.x, c2.y
    add r0.zw, -r0, c26.xyxw
    cmp r2.xz, c26.xyww, r3.x, r2
    add r0.zw, r0, r2.xyxz
    add r4, r0.w, -c2
    add r5, r0.z, -c2
    cmp r0.zw, -r4_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r4_abs.y, v0, r0
    cmp r0.zw, -r4_abs.z, v1.xyxy, r0
    cmp r0.zw, -r4_abs.w, v1, r0
    texld_pp r4, r0.zwzw, s2
    mul_pp r0.zw, r4.x, c20.xyyz
    mul_pp r0.zw, r0, c1.xyxy
    mul_pp r2.xzw, c59.w, c59.xyyz
    mul_pp r2.xzw, r0.w, r2
    max_pp r1.w, r0.z, c2.y
    mul_pp r3.yzw, r0.w, c37.xxyz
    min r0.z, r1.w, c1.z
    frc r4.yz, c27.xxyw
    cmp r6.xy, -r4.yzzw, c2.x, c2.y
    add r4.yz, -r4, c27.xxyw
    cmp r6.xy, c27, r3.x, r6
    add r4.yz, r4, r6.xxyw
    add r6, r4.y, -c2
    add r7, r4.z, -c2
    cmp r4.yz, -r6_abs.x, v0.xxyw, c2.x
    cmp r4.yz, -r6_abs.y, v0.xzww, r4
    cmp r4.yz, -r6_abs.z, v1.xxyw, r4
    cmp r4.yz, -r6_abs.w, v1.xzww, r4
    texld_pp r6, r4.yzzw, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r4.yz, r6.xxyw, c0.y, c0.z
    nrm_pp r6.xyz, v8
    mul_pp r6.xyz, r4.z, r6
    nrm_pp r8.xyz, v7
    mad_pp r6.xyz, r4.y, r8, r6
    dp2add_pp r0.w, r4.yzzw, -r4.yzzw, c2.y
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r8.xyz, v3
    mad r4.yzw, r0.w, r8.xxyz, r6.xxyz
    add_pp r6.xyz, c22, -v2
    dp3_pp r0.w, r6, r6
    rsq_pp r0.w, r0.w
    mad_pp r8.xyz, r6, r0.w, -r1
    dp3_pp r1.x, r4.yzww, -r1
    nrm_pp r9.xyz, r8
    dp3_sat_pp r1.y, r9, r4.yzww
    pow r3.x, r1.y, r0.z
    mul_pp r1.yzw, r2.xxzw, r3.x
    mul_pp r1.yzw, r0.y, r1
    mad_pp r2.xzw, r6.xyyz, r0.w, -c10.xyyz
    mul r6.xyz, r0.w, r6
    nrm_pp r8.xyz, r2.xzww
    dp3_sat_pp r0.w, r8, r4.yzww
    pow r2.x, r0.w, r0.z
    mul_pp r2.xzw, r2.x, r3.yyzw
    mad_pp r1.yzw, r2.xxzw, r0.x, r1
    dp3 r0.z, -r6, r4.yzww
    add r0.z, r0.z, r0.z
    mad_pp r2.xzw, r4.yyzw, -r0.z, -r6.xyyz
    texld_pp r3, r2.xzww, s5
    mul r2.xzw, r3.xyyz, c63.x
    mad_pp r2.xzw, r2, r3.w, r3.xyyz
    mul_pp r2.xzw, r4.x, r2
    mul r0.z, c64.z, c64.x
    mov r3.xz, c64
    mad r0.w, r3.x, -r3.z, r3.z
    mad_pp r0.z, r0.x, r0.w, r0.z
    mul_pp r2.xzw, r0.z, r2
    mad_pp r1.yzw, r1, c18.xxyz, r2.xxzw
    mul_pp r1.yzw, r1, v3.w
    dp3_pp r0.z, r4.yzww, -c10
    mul r2.xzw, r0.z, c36.xyyz
    mul_pp r2.xzw, r0.x, r2
    cmp_pp r0.xzw, r0.z, r2, c2.x
    mul_pp r2.xzw, c58.w, c58.xyyz
    mul_pp r2.xzw, r1.x, r2
    cmp_pp r2.xzw, r1.x, r2, c2.x
    mad_pp r0.xyz, r0.y, r2.xzww, r0.xzww
    mad_pp r2.xzw, r4.yyzw, c0.x, c0.x
    mul_pp r3.xyz, r4.yzww, r4.yzww
    mov r4.xyz, c79
    add r4.xyz, -r4, c80
    mad r4.xyz, r2.z, r4, c79
    mul r4.xyz, r3.y, r4
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r6.xyz, r2.x, r6, c77
    mad_pp r3.xyw, r3.x, r6.xyzz, r4.xyzz
    mov r4.xyz, c81
    add r4.xyz, -r4, c82
    mad r2.xzw, r2.w, r4.xyyz, c81.xyyz
    mad_pp r2.xzw, r3.z, r2, r3.xyyw
    mul r3.xyz, r2.xzww, c70.w
    mad r2.xzw, r2, -c70.w, r2
    mad_pp r2.xyz, r2.y, r2.xzww, r3
    add_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, c16
    cmp r2.xy, -r5_abs.x, v0, c2.x
    cmp r2.xy, -r5_abs.y, v0.zwzw, r2
    cmp r2.xy, -r5_abs.z, v1, r2
    cmp r2.xy, -r5_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s0
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0.w, r0.w, v9.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r1.x, c86.x
    mad r0.w, r0.w, c24.w, -r1.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r2, c2.y
    mad_pp r0.xyz, r0, r4, r1.yzww
    cmp r1.xy, -r7_abs.x, v0, c2.x
    cmp r1.xy, -r7_abs.y, v0.zwzw, r1
    cmp r1.xy, -r7_abs.z, v1, r1
    cmp r1.xy, -r7_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s4
    mul_pp r1.xyz, r1, c17
    mad_pp r0.xyz, r1, r0.w, r0
    mul_pp r3.xyz, r0, v9
    mul_pp r0, r3, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 191 instruction slots used (7 texture, 184 arithmetic)
