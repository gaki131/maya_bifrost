//Maya ASCII 2024 scene
//Name: b_spline_arclength_example.ma
//Last modified: Sun, Apr 14, 2024 09:39:22 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "bifrostGraphShape" -dataType "bifData" "bifrostGraph" "2.7.0.0-202302170226-ac4d174";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "E2105D27-4585-C80C-E073-739AF254E455";
createNode transform -s -n "persp";
	rename -uid "68872B39-4CE6-10B4-8551-069223438E41";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.617002745553922 22.656641101851747 -46.099143536611777 ;
	setAttr ".r" -type "double3" -12.938352729605867 -169.80000000001831 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B904EB2D-4389-F720-5604-4B829226D7D4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 41.896308047330116;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "041A228B-43C5-3D4F-332B-FCAB82A45AFB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5FBBCCAF-4AB8-A858-842C-9AADFA6AFC55";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "05113595-40E5-9098-11A0-329D3095F670";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.913864388415814 16.133516568990498 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BC690BF9-4986-D4F4-3A21-91ACB2216DE2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 33.338437978560506;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4D101383-47A8-E5F2-C705-B69D9AF85A92";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A780B455-47E9-0B59-C194-A5A98F0909A4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "b_spline_example";
	rename -uid "8A901904-45D6-B814-BBD1-65902775AD9D";
createNode bifrostGraphShape -n "b_spline_exampleShape" -p "b_spline_example";
	rename -uid "CF82F7B6-4916-7AF9-5A40-C9A8C99BD33E";
	addAttr -r false -ci true -k true -m -sn "transform" -ln "transform" -at "fltMatrix";
	addAttr -w false -ci true -m -sn "aligned_transforms" -ln "aligned_transforms" -at "fltMatrix";
	addAttr -w false -ci true -sn "diagnostic_geo" -ln "diagnostic_geo" -dt "bifData";
	addAttr -w false -ci true -sn "Core__Graph__terminal__diagnostic" -ln "Core__Graph__terminal__diagnostic" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -r false -ci true -k true -sn "JobPorts__Math_epsilonFloat" -ln "JobPorts__Math_epsilonFloat" 
		-at "float";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sc" -type "string" (
		"{\n    \"header\": {\n        \"metadata\": [\n            {\n                \"metaName\": \"adskFileFormatVersion\",\n                \"metaValue\": \"100L\"\n            }\n        ]\n    },\n    \"namespaces\": [],\n    \"types\": [],\n    \"compounds\": [\n        {\n            \"name\": \"b_spline_exampleShape\",\n            \"metadata\": [\n                {\n                    \"metaName\": \"io_nodes\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_inodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Input_by_Path\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-662.289 -213.922\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"transform\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"io_onodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"output\",\n                                    \"metadata\": [\n                                        {\n"
		+ "                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1897.75 -238.583\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"aligned_transforms\"\n                                                },\n                                                {\n                                                    \"metaName\": \"diagnostic_geo\"\n                                                }\n"
		+ "                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"internal\",\n                    \"metaValue\": \"true\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,gkRig::Motion,b_spline_arc_length\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,gkRig::Display,transform_visualize\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,Core::Array,get_from_array\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n"
		+ "                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,gkRig::Motion,align_transforms_without_twist\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,Diagnostic::Display,point_scope\"\n                },\n                {\n                    \"metaName\": \"ViewportRect\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"-211.989 -637.396 953.676 1030.63\"\n                }\n            ],\n            \"ports\": [\n                {\n                    \"portName\": \"transform\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"array<Math::float4x4>\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"/joint1 /joint1/joint2 /joint1/joint2/joint3 /joint1/joint2/joint3/joint4 /joint1/joint2/joint3/joint4/joint5\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"portName\": \"aligned_transforms\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"array<Math::float4x4>\"\n                },\n                {\n                    \"portName\": \"diagnostic_geo\",\n"
		+ "                    \"portDirection\": \"output\",\n                    \"portType\": \"array<Object>\"\n                }\n            ],\n            \"compounds\": [\n                {\n                    \"name\": \"iterate\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"icon\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"<NATIVE>../icons/LoopIterate.svg\"\n                        },\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-450.5 -61\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"transform\"\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n"
		+ "                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"366.5 -36\"\n"
		+ "                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"positions\"\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-594 -342 1189 684\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::Conversion,vector4_to_vector3\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::Constants,float\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,Core::Iterators,iterate\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"BifrostGraph,gkRig::Motion,b_spline_arc_length\"\n                        },\n                        {\n                            \"metaName\": \"_recentNode_\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"BifrostGraph,gkRig::Motion,lengths_to_parameters\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"transform\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"array<Math::float4x4>\",\n                            \"portIterationTarget\": \"true\"\n                        },\n                        {\n                            \"portName\": \"positions\",\n                            \"portDirection\": \"output\",\n                            \"portIterationTarget\": \"true\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"value\",\n                            \"valueType\": \"Math::float4x4\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"valuenode_defaultvalue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n"
		+ "                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-153.5 -116\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"vector4_to_vector3\",\n"
		+ "                            \"nodeType\": \"Core::Conversion::vector4_to_vector3\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"104.5 -17\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \"value.output.c3\",\n                            \"target\": \"vector4_to_vector3.vector4\"\n                        },\n                        {\n                            \"source\": \".transform\",\n                            \"target\": \"value.value\"\n"
		+ "                        },\n                        {\n                            \"source\": \"vector4_to_vector3.vector3\",\n                            \"target\": \".positions\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"value.value\",\n                            \"valueType\": \"Math::float4x4\",\n                            \"value\": {\n                                \"c0\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"0f\"\n                                },\n                                \"c1\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"0f\"\n                                },\n                                \"c2\": {\n                                    \"x\": \"0f\",\n"
		+ "                                    \"y\": \"0f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"0f\"\n                                },\n                                \"c3\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"0f\"\n                                }\n                            }\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        }\n                    ],\n                    \"iterateCompound\": {\n                        \"ports\": []\n                    }\n                }\n            ],\n            \"compoundNodes\": [\n                {\n                    \"nodeName\": \"iterate\",\n                    \"nodeType\": \"iterate\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-396.634 -256.774\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"sequence_array\",\n                    \"nodeType\": \"Core::Array::sequence_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"446.333 -570.273\"\n"
		+ "                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"value\",\n                    \"valueType\": \"long\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"valuenode_defaultvalue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"0\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-328.151 -654.154\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"subtract\",\n                    \"nodeType\": \"Core::Math::subtract\",\n                    \"multiInPortNames\": [\n"
		+ "                        \"output1\",\n                        \"output2\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-76.7807 -562.941\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"value1\",\n                    \"valueType\": \"long\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"-325.701 -464.748\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"step_length\",\n                    \"nodeType\": \"Core::Math::divide\",\n                    \"multiInPortNames\": [\n                        \"arc_length\",\n                        \"output1\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"185.395 -491.826\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"lengths_to_parameters\",\n                    \"nodeType\": \"gkRig::Motion::lengths_to_parameters\",\n                    \"metadata\": [\n"
		+ "                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"737.788 -191.33\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"b_spline\",\n                    \"nodeType\": \"gkRig::Motion::b_spline\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1010.32 -314.49\"\n                        }\n"
		+ "                    ]\n                },\n                {\n                    \"nodeName\": \"construct_points\",\n                    \"nodeType\": \"Geometry::Points::construct_points\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1334.79 -70.7638\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"point_scope\",\n                    \"nodeType\": \"Diagnostic::Display::point_scope\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n"
		+ "                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1614.2 -93.9976\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"align_transforms_without_twist\",\n                    \"nodeType\": \"gkRig::Motion::align_transforms_without_twist\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1314.35 -510.298\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"root_transform\",\n                    \"nodeType\": \"Core::Array::get_from_array\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1012.3 -576.141\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"transform_visualize\",\n                    \"nodeType\": \"gkRig::Display::transform_visualize\",\n                    \"terminalStates\": [\n                        {\n                            \"name\": \"Core::Graph::terminal::final\",\n                            \"enabled\": \"true\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::proxy\",\n                            \"enabled\": \"true\"\n                        },\n                        {\n"
		+ "                            \"name\": \"Core::Graph::terminal::diagnostic\",\n                            \"enabled\": \"true\"\n                        }\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1616.24 -618.243\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"b_spline_arc_length\",\n                    \"nodeType\": \"gkRig::Motion::b_spline_arc_length\",\n                    \"terminalStates\": [\n                        {\n                            \"name\": \"Core::Graph::terminal::diagnostic\",\n                            \"enabled\": \"true\"\n                        }\n                    ],\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-107.356 -167.954\"\n                        }\n                    ]\n                }\n            ],\n            \"connections\": [\n                {\n                    \"source\": \".transform\",\n                    \"target\": \"iterate.transform\"\n                },\n                {\n                    \"source\": \"value.output\",\n                    \"target\": \"sequence_array.size\"\n                },\n                {\n                    \"source\": \"value.output\",\n                    \"target\": \"subtract.first.output1\"\n                },\n                {\n                    \"source\": \"value1.output\",\n                    \"target\": \"subtract.first.output2\"\n"
		+ "                },\n                {\n                    \"source\": \"subtract.output\",\n                    \"target\": \"step_length.first.output1\"\n                },\n                {\n                    \"source\": \"step_length.output\",\n                    \"target\": \"sequence_array.step\"\n                },\n                {\n                    \"source\": \"sequence_array.sequence\",\n                    \"target\": \"lengths_to_parameters.lengths\"\n                },\n                {\n                    \"source\": \"lengths_to_parameters.parameters\",\n                    \"target\": \"b_spline.parameter\"\n                },\n                {\n                    \"source\": \"iterate.positions\",\n                    \"target\": \"b_spline.cvs\"\n                },\n                {\n                    \"source\": \"b_spline.position\",\n                    \"target\": \"construct_points.point_position\"\n                },\n                {\n                    \"source\": \"construct_points.points\",\n                    \"target\": \"point_scope.point_geo\"\n"
		+ "                },\n                {\n                    \"source\": \"b_spline.position\",\n                    \"target\": \"align_transforms_without_twist.positions\"\n                },\n                {\n                    \"source\": \"b_spline.derivative\",\n                    \"target\": \"align_transforms_without_twist.align_vectors\"\n                },\n                {\n                    \"source\": \"align_transforms_without_twist.aligned_transforms\",\n                    \"target\": \".aligned_transforms\"\n                },\n                {\n                    \"source\": \"point_scope.diagnostic_geo\",\n                    \"target\": \".diagnostic_geo\"\n                },\n                {\n                    \"source\": \".transform\",\n                    \"target\": \"root_transform.array\"\n                },\n                {\n                    \"source\": \"root_transform.value\",\n                    \"target\": \"align_transforms_without_twist.root_transform\"\n                },\n                {\n                    \"source\": \"align_transforms_without_twist.aligned_transforms\",\n"
		+ "                    \"target\": \"transform_visualize.transform\"\n                },\n                {\n                    \"source\": \"iterate.positions\",\n                    \"target\": \"b_spline_arc_length.cvs\"\n                },\n                {\n                    \"source\": \"b_spline_arc_length.sample_lengths\",\n                    \"target\": \"lengths_to_parameters.sample_lengths\"\n                },\n                {\n                    \"source\": \"b_spline_arc_length.sample_parameters\",\n                    \"target\": \"lengths_to_parameters.sample_parameters\"\n                },\n                {\n                    \"source\": \"b_spline_arc_length.sample_count\",\n                    \"target\": \"lengths_to_parameters.sample_count\"\n                },\n                {\n                    \"source\": \"b_spline_arc_length.arc_length\",\n                    \"target\": \"step_length.first.arc_length\"\n                }\n            ],\n            \"values\": [\n                {\n                    \"valueName\": \"value.value\",\n                    \"valueType\": \"long\",\n"
		+ "                    \"value\": \"20\"\n                },\n                {\n                    \"valueName\": \"value1.value\",\n                    \"valueType\": \"long\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"valueName\": \"point_scope.default_size\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0.100000001f\"\n                },\n                {\n                    \"valueName\": \"align_transforms_without_twist.root_transform\",\n                    \"valueType\": \"Math::float4x4\",\n                    \"value\": {\n                        \"c0\": {\n                            \"x\": \"1f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c1\": {\n                            \"x\": \"0f\",\n                            \"y\": \"1f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c2\": {\n"
		+ "                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"1f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c3\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"1f\"\n                        }\n                    }\n                },\n                {\n                    \"valueName\": \"align_transforms_without_twist.align_axis\",\n                    \"valueType\": \"long\",\n                    \"value\": \"0\"\n                },\n                {\n                    \"valueName\": \"transform_visualize.arrow_size\",\n                    \"valueType\": \"float\",\n                    \"value\": \"1f\"\n                },\n                {\n                    \"valueName\": \"b_spline_arc_length.precision\",\n                    \"valueType\": \"long\",\n                    \"value\": \"24\"\n                }\n            ],\n            \"reservedNodeNames\": [\n"
		+ "                {\n                    \"name\": \"output\"\n                },\n                {\n                    \"name\": \"Input_by_Path\"\n                }\n            ]\n        }\n    ]\n}\n");
	setAttr ".dirtyFlag" yes;
	setAttr -s 5 ".transform";
	setAttr -k on ".transform[0]";
	setAttr -k on ".transform[1]";
	setAttr -k on ".transform[2]";
	setAttr -k on ".transform[3]";
	setAttr -k on ".transform[4]";
	setAttr -k on ".transform";
createNode joint -n "base";
	rename -uid "E19CA777-46E7-F6EA-ECCD-E78F9B715807";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.4124500153760506e-30 141.34019174590989 ;
	setAttr ".radi" 0.77947194331549219;
createNode joint -n "base_handle" -p "base";
	rename -uid "807CCC7F-4233-8EF1-27EE-C39A67D3B63B";
	setAttr ".t" -type "double3" 6.4031242374328503 -1.7763568394002505e-15 -2.4651903288156619e-31 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -6.7151620375131567e-15 73.141601232261692 ;
	setAttr ".radi" 0.72681886933454332;
createNode joint -n "mid";
	rename -uid "4C4478FA-4890-5A18-D726-459DCFF218D6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.136346827022483e-15 -1.1213104132723586e-14 20.556045219583481 ;
	setAttr ".radi" 0.89020709027504474;
createNode joint -n "tip";
	rename -uid "0FAAB203-49A6-D535-5461-ABA9F532BEC8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.5444437451708134e-14 ;
	setAttr ".radi" 0.81034482758620674;
createNode joint -n "tip_handle" -p "tip";
	rename -uid "BADB7ADF-4B28-DB74-ED1B-32A53CF5F67B";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -6.9999999999999964 3.510262595057313e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90 ;
	setAttr ".radi" 0.81034482758620674;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9C0FFCB2-438C-6570-C35E-FD8EB21281E4";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7A0FE5F9-4FFA-73C6-BAC8-3E920D967238";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EC268017-4266-7750-8225-C9A616D9DD93";
createNode displayLayerManager -n "layerManager";
	rename -uid "2A9F27F4-4158-98C7-0554-9D9718D682EE";
createNode displayLayer -n "defaultLayer";
	rename -uid "F2B09031-4C87-EB98-0874-CF8C312A4366";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7B3EA79E-40E3-8CA9-5B15-7EB56687894A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A760C9DC-4D56-D1FB-E2BB-58897F14EBE1";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "7E81F071-487D-D7F8-E0FA-8AA951B37E2C";
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "16EE3BA6-4AE6-5DB4-8A84-4EAE9C4C4BBD";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "95A1F81A-453F-7E6E-8395-97853127EE61";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6CE0C960-4E1A-9DE1-757B-F9A8AECE9612";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3AC9A295-4818-B7DB-3320-3A833ABE44DB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1959\n            -height 1078\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1959\n            -height 1078\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1959\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1959\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition axis;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B8FEA73A-467C-343F-84A2-599BD9BC294C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 100 -ast 1 -aet 100 ";
	setAttr ".st" 6;
createNode animCurveTU -n "tip_visibility";
	rename -uid "010BF035-43B4-C4BB-47C2-5AA5DA417719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "tip_translateX";
	rename -uid "C0612C38-48BE-E3A2-D565-8E84A70C446E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 5 20 -2.8754377987714115 40 -6.8881228925858089
		 60 -5.1348599955882355 80 0.61396350782013709 100 5;
	setAttr -s 6 ".kit[1:5]"  1 18 18 1 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 1 18;
	setAttr -s 6 ".kix[1:5]"  0.1009192906763435 1 0.21687296537767964 
		0.12932027958233516 1;
	setAttr -s 6 ".kiy[1:5]"  -0.99489461591134554 0 0.97619983450535974 
		0.99160287680540071 0;
	setAttr -s 6 ".kox[1:5]"  0.10091928329981509 1 0.21687296537767961 
		0.12932026911778652 1;
	setAttr -s 6 ".koy[1:5]"  -0.99489461665959966 0 0.97619983450535985 
		0.99160287817013892 0;
createNode animCurveTL -n "tip_translateY";
	rename -uid "FEC952B9-4167-A597-A0C5-0396412D5F4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 19 20 13.29738790738045 40 6.0421754703900508
		 60 6.7334908965092595 80 14.394380018683652 100 19;
	setAttr -s 6 ".kit[2:5]"  1 1 18 18;
	setAttr -s 6 ".kot[2:5]"  1 1 18 18;
	setAttr -s 6 ".kix[2:5]"  0.13128307701138087 0.11569270317216443 
		0.13463425135920193 1;
	setAttr -s 6 ".kiy[2:5]"  -0.99134492165462962 0.99328505396624056 
		0.99089536196358652 0;
	setAttr -s 6 ".kox[2:5]"  0.13128307286383228 0.11569268388110548 
		0.13463425135920193 1;
	setAttr -s 6 ".koy[2:5]"  -0.99134492220388648 0.99328505621316321 
		0.99089536196358652 0;
createNode animCurveTL -n "tip_translateZ";
	rename -uid "F1586108-406F-738C-A90D-68A2BD99B0B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -3.5102625950573165e-16 20 2.1633857978166304
		 40 0.78845173905095312 60 -1.9396416219165489 80 -3.1458464569219959 100 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  0.2786554226171481 1 0.27516004241473435 
		0.39006791227771398 1 0.2144511592622913;
	setAttr -s 6 ".kiy[0:5]"  0.96039114710937368 0 -0.96139843512371159 
		-0.92078609014868684 0 0.97673471336441164;
	setAttr -s 6 ".kox[0:5]"  0.27865543439118351 1 0.27516002529618833 
		0.39006791227771404 1 0.21445117818464163;
	setAttr -s 6 ".koy[0:5]"  0.96039114369316259 0 -0.96139844002317842 
		-0.92078609014868684 0 0.97673470920983396;
createNode animCurveTA -n "tip_rotateX";
	rename -uid "27329901-4913-9085-8648-9FA70B07499A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 -41.307955185656397 40 -231.62447618082572
		 60 -368.16160628702647 80 -304.73437758338144 100 0;
	setAttr -s 6 ".kit[3:5]"  1 1 18;
	setAttr -s 6 ".kot[3:5]"  1 1 18;
	setAttr -s 6 ".kix[3:5]"  0.95305513065050751 0.19284109662080262 
		1;
	setAttr -s 6 ".kiy[3:5]"  -0.30279682617349912 0.98122999926321364 
		0;
	setAttr -s 6 ".kox[3:5]"  0.95305512770067791 0.19284112862237457 
		1;
	setAttr -s 6 ".koy[3:5]"  -0.30279683545810826 0.98122999297394542 
		0;
createNode animCurveTA -n "tip_rotateY";
	rename -uid "123D16BF-443A-3503-F610-6998710BE228";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 -10.177684961035153 40 25.898072326673578
		 60 109.35508900716188 80 16.872762364726615 100 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  0.92969878004211737 1 0.49330413755316038 
		1 0.68617010265594192 0.9377890514187589;
	setAttr -s 6 ".kiy[0:5]"  -0.36832075476165971 0 0.86985690080204159 
		0 -0.72744112491742885 -0.3472055515672301;
	setAttr -s 6 ".kox[0:5]"  0.92969877302425741 1 0.49330417210361266 
		1 0.68617010265594192 0.93778901032238782;
	setAttr -s 6 ".koy[0:5]"  -0.36832077247582773 0 0.86985688120814986 
		0 -0.72744112491742885 -0.34720566256695251;
createNode animCurveTA -n "tip_rotateZ";
	rename -uid "FBE3E3C6-4229-8AF5-4C3B-99A50C93A339";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 -40.068969950511132 40 -169.45700681832551
		 60 -215.01893480998567 80 -182.91384481836835 100 0;
	setAttr -s 6 ".kit[3:5]"  1 1 18;
	setAttr -s 6 ".kot[3:5]"  1 1 18;
	setAttr -s 6 ".kix[3:5]"  0.99433133635513837 0.50383866955441348 
		1;
	setAttr -s 6 ".kiy[3:5]"  -0.10632588368880189 0.86379777440187844 
		0;
	setAttr -s 6 ".kox[3:5]"  0.99433134135019707 0.50383864444081594 
		1;
	setAttr -s 6 ".koy[3:5]"  -0.10632583697633413 0.86379778905021576 
		0;
createNode animCurveTU -n "tip_scaleX";
	rename -uid "6F1F8F34-4145-1C11-644F-A29941D3561D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTU -n "tip_scaleY";
	rename -uid "EDEDBF2B-4E78-21DE-42AA-9883C50F5E01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTU -n "tip_scaleZ";
	rename -uid "BB4D3C15-428B-E404-EC69-958FC77E9E93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTU -n "mid_visibility";
	rename -uid "2979C520-4B9B-9618-707E-25AE69BF1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "mid_translateX";
	rename -uid "0297B4D7-4843-9711-EC29-C7A8816CAA9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -3 20 8.9854822137158656 40 -3.4781763835319204
		 60 -2.1321602431950062 80 5.4336540574500471 100 -3;
createNode animCurveTL -n "mid_translateY";
	rename -uid "64598F67-47F3-42EC-EE45-6CB2DB5B10CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 9 20 8.1273030353918205 40 6.0268270458124844
		 60 5.1492422872177732 80 6.3653335133059272 100 9;
	setAttr -s 6 ".kit[3:5]"  1 1 18;
	setAttr -s 6 ".kot[3:5]"  1 1 18;
	setAttr -s 6 ".kix[3:5]"  0.99173445862557963 0.32544138445258125 
		1;
	setAttr -s 6 ".kiy[3:5]"  -0.12830730133016024 0.94556221650697703 
		0;
	setAttr -s 6 ".kox[3:5]"  0.99173443571463826 0.32544144462971369 
		1;
	setAttr -s 6 ".koy[3:5]"  -0.1283074784171524 0.94556219579535061 
		0;
createNode animCurveTL -n "mid_translateZ";
	rename -uid "38CBA6F6-4966-BE67-5B24-66B4667FB392";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 2.897806113006362e-32 20 1.118128980007171
		 40 11.249573076845358 60 -4.8271447495570499 80 -9.9585710308056719 100 0;
createNode animCurveTA -n "mid_rotateX";
	rename -uid "3BF3D2E4-4068-D653-D727-0C8A6400492E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 40 0 60 0 80 0 100 0;
createNode animCurveTA -n "mid_rotateY";
	rename -uid "7C74A16C-4183-335E-C269-DE9F05C565D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 40 0 60 0 80 0 100 0;
createNode animCurveTA -n "mid_rotateZ";
	rename -uid "AEF04139-49DB-C232-4007-51905841CADE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 40 0 60 0 80 0 100 0;
createNode animCurveTU -n "mid_scaleX";
	rename -uid "512C7757-4185-33D0-FBE0-FAB7CB3A0D8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTU -n "mid_scaleY";
	rename -uid "B56B8B6C-4BF0-D7F2-D99F-5782CEB8D4AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTU -n "mid_scaleZ";
	rename -uid "2C827BC3-4BD1-1672-F7A6-93B4709D6FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTU -n "base_visibility";
	rename -uid "CA60AA9F-497A-F6CD-FCF1-AA947AF13A50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "base_scaleZ";
	rename -uid "14DE1114-4456-44F8-15F9-B9A34B70379D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTU -n "base_scaleY";
	rename -uid "492FF4BB-4717-3A34-CC4E-D987A8CC99C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTU -n "base_scaleX";
	rename -uid "F6F60F28-4B54-1900-E263-EE97B6719D01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 80 1 100 1;
createNode animCurveTA -n "base_rotateZ";
	rename -uid "C72F803C-418C-FC9F-E769-61BCE868641B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 115.84153180023645 40 110.47908752586495
		 60 -34.410591789482794 80 -93.750510465641682 100 0.99418037710254381;
	setAttr -s 6 ".kit[3:5]"  18 18 1;
	setAttr -s 6 ".kot[3:5]"  18 18 1;
	setAttr -s 6 ".kix[0:5]"  0.27199563402814803 0.40092113719697614 
		0.43552133846955998 0.42356216316757006 1 0.32979305985858143;
	setAttr -s 6 ".kiy[0:5]"  0.96229848543454832 0.91611257045664618 
		-0.90017840661597914 -0.90586703987550443 0 0.94405324938221269;
	setAttr -s 6 ".kox[0:5]"  0.27199562347642742 0.40092117082306744 
		0.43552135403586772 0.42356216316757 1 0.32979307933122493;
	setAttr -s 6 ".koy[0:5]"  0.96229848841701371 0.91611255574075656 
		-0.9001783990847394 -0.90586703987550443 0 0.94405324257969092;
createNode animCurveTA -n "base_rotateY";
	rename -uid "F1DA2445-4508-6758-3BC9-5E9FCD542E26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 11.965952875775871 40 74.936099370975228
		 60 83.344621105974142 80 16.11485390065226 100 0.37017906410505619;
	setAttr -s 6 ".kit[2:5]"  1 1 18 18;
	setAttr -s 6 ".kot[2:5]"  1 1 18 18;
	setAttr -s 6 ".kix[2:5]"  0.68650934530111685 0.76741729689782423 
		0.7548517427826551 1;
	setAttr -s 6 ".kiy[2:5]"  0.72712097948981769 -0.64114794893381399 
		-0.65589545387812254 0;
	setAttr -s 6 ".kox[2:5]"  0.68650935569807336 0.76741725538582661 
		0.7548517427826551 1;
	setAttr -s 6 ".koy[2:5]"  0.72712096967355877 -0.64114799862128957 
		-0.65589545387812254 0;
createNode animCurveTA -n "base_rotateX";
	rename -uid "C7773897-464E-1411-B00A-7A873C0F6869";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 82.183124058717226 40 42.511968833956011
		 60 -58.272358756425312 80 -58.272358756425312 100 0;
	setAttr -s 6 ".kit[1:5]"  18 18 1 1 1;
	setAttr -s 6 ".kot[1:5]"  18 18 1 1 1;
	setAttr -s 6 ".kix[0:5]"  0.46549681411462551 1 0.56224253195265539 
		0.58509854461326616 0.50485811197087127 0.80895356990136125;
	setAttr -s 6 ".kiy[0:5]"  0.88504955570246668 0 -0.82697239087134411 
		-0.81096220201155977 0.86320234405219676 0.58787253868831435;
	setAttr -s 6 ".kox[0:5]"  0.4654968407174217 1 0.5622425319526555 
		0.58509849909531408 0.50485813087584286 0.80895358478195778;
	setAttr -s 6 ".koy[0:5]"  0.88504954171057537 0 -0.82697239087134422 
		-0.81096223485216046 0.86320233299531257 0.58787251821157605;
createNode animCurveTL -n "base_translateZ";
	rename -uid "C777B223-457B-F9B1-E3A9-5CBD411DC332";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 3.8986501153495374 40 2.4941511991785443
		 60 -4.4268990986163184 80 -4.0572859528562413 100 0;
	setAttr -s 6 ".kix[0:5]"  0.16764729051757377 0.33827422169460097 
		0.15997527196290934 0.27712724183591891 0.18793320978091679 0.1551311037073197;
	setAttr -s 6 ".kiy[0:5]"  0.98584703985056232 0.94104758165403735 
		-0.9871210221449005 -0.96083322789775338 0.98218181039023611 0.98789389139853923;
	setAttr -s 6 ".kox[0:5]"  0.1676472712770877 0.33827425319068694 
		0.15997526507388346 0.2771272233586598 0.18793321132899796 0.15513112288016226;
	setAttr -s 6 ".koy[0:5]"  0.98584704312248495 0.94104757033227771 
		-0.98712102326135309 -0.96083323322703584 0.98218181009402239 0.98789388838778636;
createNode animCurveTL -n "base_translateY";
	rename -uid "AAD17B7F-4828-3F5C-3F84-53A256D30D5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 40 0 60 0 80 0 100 0;
createNode animCurveTL -n "base_translateX";
	rename -uid "26C52C42-424B-6358-0475-5E9906F4956B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 -3.8302216223237835 40 -3.8008711186713118
		 60 3.5065457724370539 80 4.7376849608950131 100 0.041741797601354769;
	setAttr -s 6 ".kix[0:5]"  0.16204479866895169 0.23590225171455778 
		0.22351133557697103 0.13172256028539051 0.28862837368424471 0.18549338207268784;
	setAttr -s 6 ".kiy[0:5]"  -0.98678340238592321 -0.9717767889983796 
		0.97470133008455395 0.99128662207852969 -0.95744120545566036 -0.98264551350282769;
	setAttr -s 6 ".kox[0:5]"  0.16204481618358266 0.23590226565748609 
		0.22351131445658665 0.13172255108082134 0.28862840219881525 0.18549339237577744;
	setAttr -s 6 ".koy[0:5]"  -0.98678339950975513 -0.97177678561368452 
		0.97470133492772493 0.99128662330163642 -0.95744119685971263 -0.98264551155791979;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "base.wm" "b_spline_exampleShape.transform[0]";
connectAttr "base_handle.wm" "b_spline_exampleShape.transform[1]";
connectAttr "mid.wm" "b_spline_exampleShape.transform[2]";
connectAttr "tip_handle.wm" "b_spline_exampleShape.transform[3]";
connectAttr "tip.wm" "b_spline_exampleShape.transform[4]";
connectAttr "base_scaleX.o" "base.sx";
connectAttr "base_scaleY.o" "base.sy";
connectAttr "base_scaleZ.o" "base.sz";
connectAttr "base_visibility.o" "base.v";
connectAttr "base_translateX.o" "base.tx";
connectAttr "base_translateY.o" "base.ty";
connectAttr "base_translateZ.o" "base.tz";
connectAttr "base_rotateX.o" "base.rx";
connectAttr "base_rotateY.o" "base.ry";
connectAttr "base_rotateZ.o" "base.rz";
connectAttr "base.s" "base_handle.is";
connectAttr "mid_translateX.o" "mid.tx";
connectAttr "mid_translateY.o" "mid.ty";
connectAttr "mid_translateZ.o" "mid.tz";
connectAttr "mid_visibility.o" "mid.v";
connectAttr "mid_rotateX.o" "mid.rx";
connectAttr "mid_rotateY.o" "mid.ry";
connectAttr "mid_rotateZ.o" "mid.rz";
connectAttr "mid_scaleX.o" "mid.sx";
connectAttr "mid_scaleY.o" "mid.sy";
connectAttr "mid_scaleZ.o" "mid.sz";
connectAttr "tip_rotateZ.o" "tip.rz";
connectAttr "tip_rotateX.o" "tip.rx";
connectAttr "tip_rotateY.o" "tip.ry";
connectAttr "tip_scaleX.o" "tip.sx";
connectAttr "tip_scaleY.o" "tip.sy";
connectAttr "tip_scaleZ.o" "tip.sz";
connectAttr "tip_visibility.o" "tip.v";
connectAttr "tip_translateX.o" "tip.tx";
connectAttr "tip_translateY.o" "tip.ty";
connectAttr "tip_translateZ.o" "tip.tz";
connectAttr "tip.s" "tip_handle.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "b_spline_exampleShape.iog" ":initialShadingGroup.dsm" -na;
// End of b_spline_arclength_example.ma
