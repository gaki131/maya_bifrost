# gkRig
Compounds for rigging

# Installation
Add the path to **gkRig\bifrost_lib_config.json** to the environment variable **BIFROST_LIB_CONFIG_FILES** in the Maya.env. Maya.env is normally located in the Documents\maya\20xx for Windows user.
For example, if you saved gkRig in C:\Autodesk\Bifrost\gkRig, you should add the following in the Maya.env. If you want to add multiple bifrost_lib_config.json, use **;** for separating each path.

`BIFROST_LIB_CONFIG_FILES = C:\Autodesk\Bifrost\gkRig\bifrost_lib_config.json`

# Compounds
## b_spline
This compound interpolates between the given control points(cvs) by a quadratic B-Spline curve, and outputs the interpolated position and the tangent.
### Namespace : gkRig::Motion
### Inputs

  - **cvs** (type: array\<Math::float3\>)<br>
    Control vertices used for interpolating by quadratic B-Spline. You need to have minimum 4 cvs.
  - **parameter** (type: float | array\<float\>)<br>
    0.0 to 1.0 value which determines the parametric position on the B-Spline curve.
  
### Outputs
 - **position** (type: Math::float3 | array\<Math::float3\>)<br>
    Interpolated position on the B-Spline curve on the given parameter.
 - **derivative** (type: Math::float3 | array\<Math::float3\>)<br>
    Derivative or tangent on the given parameter.

## b_spline_arc_length
This compound calcultes total arc length of quadratic B-Spline curve that would be created from the given control vertices. Also, samples the arc length on multiple parameters so that one can convert values between the length and parameters.
### Namespace : gkRig::Motion
### Inputs
  - **cvs** (type: array\<Math::float3\> | array<\Math::double3\>)<br>
    Control vertices used for creating the quadratic B-Spline of interest. You need to have minimum 4 cvs.
  - **higher_precision** (bool)<br>
    If True, double the samples for higher accuracy.
### Outputs
  - **arc_length** (type: double)<br>
    Total arc length of the B-Spline curve generated from the given control vertices.
  - **sample_lengths** (type: array\<double\>)<br>
    Sampled arc lengths.
  - **sample_parameters** (type: array\<bouble\>)<br>
    Sampled parameters.
  - **sample_count** (type: long)<br>
    Number of the length and parameter samples.

## lengths_to_parameters
This compounds given array of lengths into array of parameters interpolating them from given samples. The input lengths does not have to be sorted.
### Namepace : gkRig::Motion
### Inputs
  - **lengths** (type: array\<double\>)<br>
    Array of arc length that you want to convert to parameter value.
  - **sample_lengths** (type: array\<double\>)<br>
    Sampled arc lengths from the output of b_spline_arc_length or other arc length compounds.
  - **sample_parameters** (type: array\<double\>)<br>
    Sampled parameters from the output of b_spline_arc_length or other arc length compounds.
  - **sample_count** (type: long)<br>
     Number of the length and parameter samples.
### Outputs
  - **parameters** (type: array\<float\>)<br>
    Array of the parameters that are on the given arc lengths.

## transform_blend
This compound blends between two given transforms.
### Namespace : gkRig::Motion
### Inputs

 - **source** (type: Math::float4x4 | array\<Math::float4x4\>)<br>
   Transform to begin with.
 - **target** (type: Math::float4x4 | array\<Math::float4x4\>)<br>
   Blend target transform.
 - **blend** (type: float | array\<float\>)<br>
   Blend value(0.0 - 1.0) between source and target.
 - **apply_scale** (type: bool)<br>
   If True, scale will be blended.
 - **apply_orientation** (type: bool)<br>
   If True, orientation will be blended.
 - **apply_position** (type: bool)<br>
   If True, position will be blended.

### Outputs
 - **blended_transform** (type: Math::float4x4)<br>
   Output transform of the blended result between source and target.

## transform_visualize
Visualizes the position and each axes of the given transform(s).
### Namespace : gkRig::Display
### Inputs
 - **transform** (type: Math::float4x4 | array\<Math::float4x4\>)<br>
   Input transform(s) to visualize.
 - **arrow_size** (type: float)<br>
   Size of the arrows.
 - **arrowhead_size_ratio** (type: float)<br>
   Size of the arrow head relative to the arrow size.
 - **tint** (type: float)<br>
   lightness of the arrows towards white.
 


