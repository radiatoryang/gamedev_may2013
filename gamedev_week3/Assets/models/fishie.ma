//Maya ASCII 2012 scene
//Name: fishie.ma
//Last modified: Mon, Jun 17, 2013 01:37:23 PM
//Codeset: 1252
requires maya "2012";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -41.265292388945205 5.3611839519742048 -23.063693913998726 ;
	setAttr ".r" -type "double3" -6.8718814967807793 281.39999999995194 2.0114068843687534e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 42.544566187938734;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.18235969543457031 1.0948343276977539 -31.45380973815918 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 50.817656119794954;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 25.517056245526824;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Fish";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.18235971655872474 1.6841795181085777 -31.103386984324906 ;
	setAttr ".sp" -type "double3" -0.18235971655872474 1.6841795181085777 -31.103386984324906 ;
createNode mesh -n "FishShape" -p "Fish";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gid";
	setAttr -av ".iog[0].og[1].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.49999998509883881 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "FishShapeOrig" -p "Fish";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 104 ".uvst[0].uvsp[0:103]" -type "float2" 0.019448638 0.47593603
		 0.019448638 0.47593603 -2.9802322e-008 0.5299722 -2.9802322e-008 0.5299722 0.010472417
		 0.55911613 0.010472417 0.55911613 0.062834144 0.59350049 0.062834144 0.59350049 0.11851799
		 0.62363338 0.11851799 0.62363338 0.19963479 0.6419751 0.19963479 0.6419751 0.32114494
		 0.65507627 0.32114494 0.65507627 0.36785245 0.69962054 0.36785245 0.69962054 0.44298494
		 0.71665221 0.44298494 0.71665221 0.52410173 0.68651927 0.52410173 0.68651927 0.55136037
		 0.63411427 0.55136037 0.63411427 0.6429497 0.63149405 0.6429497 0.63149405 0.78257143
		 0.57925004 0.78257143 0.57925004 0.79321456 0.50240004 0.79321456 0.50240004 0.87126231
		 0.49027061 0.87126231 0.49027061 0.9536221 0.50192428 0.9536221 0.50192428 0.99999988
		 0.44081247 0.99999988 0.44081247 0.99999988 0.37970042 0.99999988 0.37970042 0.9536221
		 0.31858867 0.9536221 0.31858867 0.86204469 0.34705907 0.86204469 0.34705907 0.77526188
		 0.35086596 0.77526188 0.35086596 0.7435149 0.28596801 0.7435149 0.28596801 0.63846135
		 0.28334779 0.63846135 0.28334779 0.56129098 0.30474585 0.56129098 0.30474585 0.52293003
		 0.31671527 0.52293003 0.31671527 0.44651866 0.36151916 0.44651866 0.36151916 0.41123796
		 0.31872112 0.41123796 0.31872112 0.33012128 0.31872112 0.33012128 0.31872112 0.19963467
		 0.39339823 0.19963467 0.39339823 0.11851788 0.42222095 0.11851788 0.42222095 0.87923312
		 0.39210433 0.80012286 0.39526337 0.71209776 0.40944082 0.63846135 0.41861171 0.55285645
		 0.44743443 0.47173977 0.4579154 0.42054403 0.4579154 0.33942723 0.46315593 0.2672869
		 0.47101665 0.19963467 0.47625718 0.11851788 0.47625718 0.87923312 0.45272413 0.80012286
		 0.47503427 0.71209776 0.50540102 0.63846135 0.51457191 0.56332886 0.54339463 0.48221207
		 0.55387557 0.4220401 0.55387557 0.34092331 0.55911613 0.2672869 0.56697685 0.19963467
		 0.57221735 0.11851788 0.57221735 0.80012286 0.39526337 0.87923312 0.39210433 0.71209776
		 0.40944082 0.63846135 0.41861171 0.55285645 0.44743443 0.47173977 0.4579154 0.42054403
		 0.4579154 0.33942723 0.46315593 0.2672869 0.47101665 0.19963467 0.47625718 0.11851788
		 0.47625718 0.80012286 0.47503427 0.87923312 0.45272413 0.71209776 0.50540102 0.63846135
		 0.51457191 0.56332886 0.54339463 0.48221207 0.55387557 0.4220401 0.55387557 0.34092331
		 0.55911613 0.2672869 0.56697685 0.19963467 0.57221735 0.11851788 0.57221735;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 104 ".pt[0:103]" -type "float3"  -0.1208141 1.6841795 -31.103388 
		-0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 
		-31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 
		1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 
		-0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 
		-31.103388 -0.13534874 1.6841795 -31.103388 -0.23017034 1.6841795 -31.103388 -0.1208141 
		1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 
		-0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 
		-31.103388 -0.13957237 1.6841795 -31.103388 -0.22493675 1.6841795 -31.103388 -0.1208141 
		1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 
		-0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 
		-31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 
		1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 
		-0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 
		-31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 
		1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 
		-0.24818046 1.6841795 -31.103388 -0.13957237 1.6841795 -31.103388 -0.22493675 1.6841795 
		-31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 
		1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 1.6841795 -31.103388 
		-0.24818046 1.6841795 -31.103388 -0.13534874 1.6841795 -31.103388 -0.23017034 1.6841795 
		-31.103388 -0.1208141 1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.1208141 
		1.6841795 -31.103388 -0.24818046 1.6841795 -31.103388 -0.57110083 1.6841795 -31.103388 
		-0.65214431 1.6841795 -31.103388 -0.65214431 1.6841795 -31.103388 -0.50896037 1.6841795 
		-31.103388 -0.65214431 1.6841795 -31.103388 -0.65214431 1.6841795 -31.103388 -0.65214431 
		1.6841795 -31.103388 -0.5411998 1.6841795 -31.103388 -0.65214431 1.6841795 -31.103388 
		-0.65214431 1.6841795 -31.103388 -0.57110083 1.6841795 -31.103388 -0.65214431 1.6841795 
		-31.103388 -0.65214431 1.6841795 -31.103388 -0.50896037 1.6841795 -31.103388 -0.65214431 
		1.6841795 -31.103388 -0.65214431 1.6841795 -31.103388 -0.65214431 1.6841795 -31.103388 
		-0.5411998 1.6841795 -31.103388 -0.65214431 1.6841795 -31.103388 -0.65214431 1.6841795 
		-31.103388 0.20638178 1.6841795 -31.103388 0.28742492 1.6841795 -31.103388 0.28742492 
		1.6841795 -31.103388 0.14424095 1.6841795 -31.103388 0.28742492 1.6841795 -31.103388 
		0.28742492 1.6841795 -31.103388 0.28742492 1.6841795 -31.103388 0.17648032 1.6841795 
		-31.103388 0.28742492 1.6841795 -31.103388 0.28742492 1.6841795 -31.103388 0.20638178 
		1.6841795 -31.103388 0.28742492 1.6841795 -31.103388 0.28742492 1.6841795 -31.103388 
		0.14424095 1.6841795 -31.103388 0.28742492 1.6841795 -31.103388 0.28742492 1.6841795 
		-31.103388 0.28742492 1.6841795 -31.103388 0.17648032 1.6841795 -31.103388 0.28742492 
		1.6841795 -31.103388 0.28742492 1.6841795 -31.103388 -0.2323676 1.6841795 -31.103388 
		-0.14568356 1.6841795 -31.103388 0.011312151 1.6841795 -31.103388 0.011312151 1.6841795 
		-31.103388 -0.14568356 1.6841795 -31.103388 -0.2323676 1.6841795 -31.103388 -0.45110345 
		1.6841795 -31.103388 -0.45110345 1.6841795 -31.103388;
	setAttr -s 104 ".vt[0:103]"  -0.2620163 -1.17447495 9.88227844 0.28021666 -1.17447495 9.88227844
		 -0.2620163 0.1394496 10.29641151 0.28021666 0.1394496 10.29641151 -0.2620163 0.84810126 10.073415756
		 0.28021666 0.84810126 10.073415756 -0.2620163 1.68417895 8.95844078 0.28021666 1.68417895 8.95844078
		 -0.2620163 2.41687918 7.77272606 0.28021666 2.41687918 7.77272606 -0.2620163 2.86286974 6.045454025
		 0.28021666 2.86286974 6.045454025 -0.20013845 3.18143415 3.4580555 0.20354271 3.18143415 3.4580555
		 -0.2620163 4.26455545 2.4634819 0.28021666 4.26455545 2.4634819 -0.2620163 4.67869043 0.86363602
		 0.28021666 4.67869043 0.86363602 -0.2620163 3.94599104 -0.86363792 0.28021666 3.94599104 -0.86363792
		 -0.18215731 2.67173052 -1.44407463 0.18126193 2.67173052 -1.44407463 -0.2620163 2.60801744 -3.39434624
		 0.28021666 2.60801744 -3.39434624 -0.2620163 1.33766901 -6.36740685 0.28021666 1.33766901 -6.36740685
		 -0.2620163 -0.53098702 -6.59403801 0.28021666 -0.53098702 -6.59403801 -0.2620163 -0.54255557 -10.0097026825
		 0.28021666 -0.54255557 -10.0097026825 -0.2620163 -2.028526783 -10.99725533 0.28021666 -2.028526783 -10.99725533
		 -0.2620163 -3.51450539 -10.99725533 0.28021666 -3.51450539 -10.99725533 -0.2620163 -5.00047683716 -10.0097026825
		 0.28021666 -5.00047683716 -10.0097026825 -0.2620163 -4.21563387 -6.21175957 0.28021666 -4.21563387 -6.21175957
		 -0.2620163 -5.79366922 -5.53574944 0.28021666 -5.79366922 -5.53574944 -0.2620163 -5.85738134 -3.29877281
		 0.28021666 -5.85738134 -3.29877281 -0.18215731 -5.3370738 -1.65553474 0.18126193 -5.3370738 -1.65553474
		 -0.2620163 -5.046030045 -0.8386879 0.28021666 -5.046030045 -0.8386879 -0.2620163 -3.95659447 0.78838921
		 0.28021666 -3.95659447 0.78838921 -0.2620163 -4.9972558 1.53964615 0.28021666 -4.9972558 1.53964615
		 -0.20013845 -4.9972558 3.26691818 0.20354271 -4.9972558 3.26691818 -0.2620163 -3.18143511 6.045455933
		 0.28021666 -3.18143511 6.045455933 -0.2620163 -2.48059225 7.77272987 0.28021666 -2.48059225 7.77272987
		 1.65497804 -3.13608265 -6.74114037 2 -2.79134893 -4.86676216 2 -2.5683527 -3.29877281
		 1.39042723 -1.86750984 -1.47593117 2 -1.61265802 0.25134087 2 -1.61265802 1.34148407
		 2 -1.485232 3.068758011 1.5276792 -1.29409301 4.60489082 2 -1.16666698 6.045455933
		 2 -1.16666698 7.77272987 1.65497804 -1.19640231 -6.74114037 2 -0.45801568 -4.86676216
		 2 -0.2350198 -3.29877281 1.39042723 0.46582329 -1.69892693 2 0.72067511 0.028347015
		 2 0.72067511 1.30962753 2 0.84810126 3.036901474 1.5276792 1.039240479 4.60489082
		 2 1.16666615 6.045455933 2 1.16666615 7.77272987 -1.65497756 -3.13608265 -6.74114037
		 -2 -2.79134893 -4.86676216 -2 -2.5683527 -3.29877281 -1.39042723 -1.86750984 -1.47593117
		 -2 -1.61265802 0.25134087 -2 -1.61265802 1.34148407 -2 -1.485232 3.068758011 -1.52767897 -1.29409301 4.60489082
		 -2 -1.16666698 6.045455933 -2 -1.16666698 7.77272987 -1.65497756 -1.19640231 -6.74114037
		 -2 -0.45801568 -4.86676216 -2 -0.2350198 -3.29877281 -1.39042723 0.46582329 -1.69892693
		 -2 0.72067511 0.028347015 -2 0.72067511 1.30962753 -2 0.84810126 3.036901474 -1.52767897 1.039240479 4.60489082
		 -2 1.16666615 6.045455933 -2 1.16666615 7.77272987 0.21289706 -0.82592094 -8.25596046
		 -0.1561403 -0.82592094 -8.25596046 -0.82451344 -1.73888755 -8.42568779 -0.82451344 -3.21289682 -8.42568779
		 -0.1561403 -4.30820036 -8.059682846 0.21289706 -4.30820036 -8.059682846 1.14411664 -3.21289682 -8.42568779
		 1.14411664 -1.73888755 -8.42568779;
	setAttr -s 204 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 1 4 5 1 6 7 0 8 9 1 10 11 1 12 13 1 14 15 1
		 16 17 1 18 19 1 20 21 1 22 23 1 24 25 1 26 27 1 28 29 0 30 31 1 32 33 1 34 35 0 36 37 1
		 38 39 1 40 41 1 42 43 1 44 45 1 46 47 1 48 49 1 50 51 1 52 53 1 54 55 1 0 2 0 1 3 0
		 2 4 0 3 5 0 4 6 0 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0
		 14 16 0 15 17 0 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 24 0 23 25 0 24 26 0
		 25 27 0 26 97 0 27 96 0 28 30 0 29 31 0 30 32 0 31 33 0 32 34 0 33 35 0 34 100 0
		 35 101 0 36 38 0 37 39 0 38 40 0 39 41 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0
		 45 47 0 46 48 0 47 49 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 0 0 55 1 0
		 33 102 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1
		 65 3 1 31 103 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 5 1 37 56 1 39 57 1 41 58 1 43 59 1 45 60 1 47 61 1 49 62 1 51 63 1 53 64 1 55 65 1
		 56 66 1 57 67 1 58 68 1 59 69 1 60 70 1 61 71 1 62 72 1 63 73 1 64 74 1 65 75 1 66 27 1
		 67 25 1 68 23 1 69 21 1 70 19 1 71 17 1 72 15 1 73 13 1 74 11 1 75 9 1 32 99 1 76 77 1
		 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 2 1 30 98 1 86 87 1
		 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 4 1 36 76 1 38 77 1
		 40 78 1 42 79 1 44 80 1 46 81 1 48 82 1 50 83 1;
	setAttr ".ed[166:203]" 52 84 1 54 85 1 76 86 1 77 87 1 78 88 1 79 89 1 80 90 1
		 81 91 1 82 92 1 83 93 1 84 94 1 85 95 1 86 26 1 87 24 1 88 22 1 89 20 1 90 18 1 91 16 1
		 92 14 1 93 12 1 94 10 1 95 8 1 96 29 0 97 28 0 96 97 1 98 86 1 97 98 1 99 76 1 98 99 1
		 100 36 0 99 100 1 101 37 0 100 101 1 102 56 1 101 102 1 103 66 1 102 103 1 103 96 1;
	setAttr -s 102 ".fc[0:101]" -type "polyFaces" 
		f 4 0 29 -2 -29
		mu 0 4 0 1 2 3
		f 4 1 31 -3 -31
		mu 0 4 3 2 4 5
		f 4 2 33 -4 -33
		mu 0 4 5 4 6 7
		f 4 3 35 -5 -35
		mu 0 4 7 6 8 9
		f 4 4 37 -6 -37
		mu 0 4 9 8 10 11
		f 4 5 39 -7 -39
		mu 0 4 11 10 12 13
		f 4 6 41 -8 -41
		mu 0 4 13 12 14 15
		f 4 7 43 -9 -43
		mu 0 4 15 14 16 17
		f 4 8 45 -10 -45
		mu 0 4 17 16 18 19
		f 4 9 47 -11 -47
		mu 0 4 19 18 20 21
		f 4 10 49 -12 -49
		mu 0 4 21 20 22 23
		f 4 11 51 -13 -51
		mu 0 4 23 22 24 25
		f 4 12 53 -14 -53
		mu 0 4 25 24 26 27
		f 4 13 55 190 -55
		mu 0 4 27 26 28 29
		f 4 14 57 -16 -57
		mu 0 4 30 31 32 33
		f 4 15 59 -17 -59
		mu 0 4 33 32 34 35
		f 4 16 61 -18 -61
		mu 0 4 35 34 36 37
		f 4 198 197 -19 -196
		mu 0 4 38 39 40 41
		f 4 18 65 -20 -65
		mu 0 4 41 40 42 43
		f 4 19 67 -21 -67
		mu 0 4 43 42 44 45
		f 4 20 69 -22 -69
		mu 0 4 45 44 46 47
		f 4 21 71 -23 -71
		mu 0 4 47 46 48 49
		f 4 22 73 -24 -73
		mu 0 4 49 48 50 51
		f 4 23 75 -25 -75
		mu 0 4 51 50 52 53
		f 4 24 77 -26 -77
		mu 0 4 53 52 54 55
		f 4 25 79 -27 -79
		mu 0 4 55 54 56 57
		f 4 26 81 -28 -81
		mu 0 4 57 56 58 59
		f 4 27 83 -1 -83
		mu 0 4 59 58 1 0
		f 4 -198 200 199 -107
		mu 0 4 40 39 60 61
		f 4 -66 106 85 -108
		mu 0 4 42 40 61 62
		f 4 -68 107 86 -109
		mu 0 4 44 42 62 63
		f 4 -70 108 87 -110
		mu 0 4 46 44 63 64
		f 4 -72 109 88 -111
		mu 0 4 48 46 64 65
		f 4 -74 110 89 -112
		mu 0 4 50 48 65 66
		f 4 -76 111 90 -113
		mu 0 4 52 50 66 67
		f 4 -78 112 91 -114
		mu 0 4 54 52 67 68
		f 4 -80 113 92 -115
		mu 0 4 56 54 68 69
		f 4 -82 114 93 -116
		mu 0 4 58 56 69 70
		f 4 -84 115 94 -30
		mu 0 4 1 58 70 2
		f 4 -200 202 201 -117
		mu 0 4 61 60 71 72
		f 4 -86 116 96 -118
		mu 0 4 62 61 72 73
		f 4 -87 117 97 -119
		mu 0 4 63 62 73 74
		f 4 -88 118 98 -120
		mu 0 4 64 63 74 75
		f 4 -89 119 99 -121
		mu 0 4 65 64 75 76
		f 4 -90 120 100 -122
		mu 0 4 66 65 76 77
		f 4 -91 121 101 -123
		mu 0 4 67 66 77 78
		f 4 -92 122 102 -124
		mu 0 4 68 67 78 79
		f 4 -93 123 103 -125
		mu 0 4 69 68 79 80
		f 4 -94 124 104 -126
		mu 0 4 70 69 80 81
		f 4 -95 125 105 -32
		mu 0 4 2 70 81 4
		f 4 -202 203 -56 -127
		mu 0 4 72 71 28 26
		f 4 -97 126 -54 -128
		mu 0 4 73 72 26 24
		f 4 -98 127 -52 -129
		mu 0 4 74 73 24 22
		f 4 -99 128 -50 -130
		mu 0 4 75 74 22 20
		f 4 -100 129 -48 -131
		mu 0 4 76 75 20 18
		f 4 -101 130 -46 -132
		mu 0 4 77 76 18 16
		f 4 -102 131 -44 -133
		mu 0 4 78 77 16 14
		f 4 -103 132 -42 -134
		mu 0 4 79 78 14 12
		f 4 -104 133 -40 -135
		mu 0 4 80 79 12 10
		f 4 -105 134 -38 -136
		mu 0 4 81 80 10 8
		f 4 -106 135 -36 -34
		mu 0 4 4 81 8 6
		f 4 195 158 -194 196
		mu 0 4 38 41 82 83
		f 4 64 159 -138 -159
		mu 0 4 41 43 84 82
		f 4 66 160 -139 -160
		mu 0 4 43 45 85 84
		f 4 68 161 -140 -161
		mu 0 4 45 47 86 85
		f 4 70 162 -141 -162
		mu 0 4 47 49 87 86
		f 4 72 163 -142 -163
		mu 0 4 49 51 88 87
		f 4 74 164 -143 -164
		mu 0 4 51 53 89 88
		f 4 76 165 -144 -165
		mu 0 4 53 55 90 89
		f 4 78 166 -145 -166
		mu 0 4 55 57 91 90
		f 4 80 167 -146 -167
		mu 0 4 57 59 92 91
		f 4 82 28 -147 -168
		mu 0 4 59 0 3 92
		f 4 193 168 -192 194
		mu 0 4 83 82 93 94
		f 4 137 169 -149 -169
		mu 0 4 82 84 95 93
		f 4 138 170 -150 -170
		mu 0 4 84 85 96 95
		f 4 139 171 -151 -171
		mu 0 4 85 86 97 96
		f 4 140 172 -152 -172
		mu 0 4 86 87 98 97
		f 4 141 173 -153 -173
		mu 0 4 87 88 99 98
		f 4 142 174 -154 -174
		mu 0 4 88 89 100 99
		f 4 143 175 -155 -175
		mu 0 4 89 90 101 100
		f 4 144 176 -156 -176
		mu 0 4 90 91 102 101
		f 4 145 177 -157 -177
		mu 0 4 91 92 103 102
		f 4 146 30 -158 -178
		mu 0 4 92 3 5 103
		f 4 191 178 54 192
		mu 0 4 94 93 27 29
		f 4 148 179 52 -179
		mu 0 4 93 95 25 27
		f 4 149 180 50 -180
		mu 0 4 95 96 23 25
		f 4 150 181 48 -181
		mu 0 4 96 97 21 23
		f 4 151 182 46 -182
		mu 0 4 97 98 19 21
		f 4 152 183 44 -183
		mu 0 4 98 99 17 19
		f 4 153 184 42 -184
		mu 0 4 99 100 15 17
		f 4 154 185 40 -185
		mu 0 4 100 101 13 15
		f 4 155 186 38 -186
		mu 0 4 101 102 11 13
		f 4 156 187 36 -187
		mu 0 4 102 103 9 11
		f 4 157 32 34 -188
		mu 0 4 103 5 7 9
		f 4 -191 188 -15 -190
		mu 0 4 29 28 31 30
		f 4 147 -193 189 56
		mu 0 4 33 94 29 30
		f 4 136 -195 -148 58
		mu 0 4 35 83 94 33
		f 4 62 -197 -137 60
		mu 0 4 37 38 83 35
		f 4 17 63 -199 -63
		mu 0 4 37 36 39 38
		f 4 -201 -64 -62 84
		mu 0 4 60 39 36 34
		f 4 -203 -85 -60 95
		mu 0 4 71 60 34 32
		f 4 -204 -96 -58 -189
		mu 0 4 28 71 32 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.061705642267357419 1.3282203553833294 -30.842241724078221 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -77.941661194392978 -81.393020178314671 78.073550355778835 ;
	setAttr ".bps" -type "matrix" 0.030927249075978769 0.14642527716044149 0.98873815718474234 0
		 -0.0045778725476654366 0.98922173359085064 -0.14635369785027449 0 -0.99951115468889584 6.5225602696727937e-016 0.03126422320273281 0
		 0.061705642267357419 1.3282203553833294 -30.842241724078221 1;
	setAttr ".radi" 0.65991118327552167;
createNode joint -n "joint7" -p "joint6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.32603462214843981 -2.8765747746391135 -1.9506782560651288 ;
	setAttr ".bps" -type "matrix" -0.019134069263797675 0.11252615899432059 0.99346451921313872 0
		 0.0021668454700255616 0.99364876266313784 -0.11250529426975496 0 -0.99981457889656589 -1.3297487859844838e-014 -0.019256371046559577 0
		 0.16972016138402721 1.8396158519616053 -27.389038488373615 1;
	setAttr ".radi" 0.74892310961381325;
createNode joint -n "joint8" -p "joint7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 5.7830462288030908 -1.5087709400977465e-015 1.7612325655651013e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999977 88.89662301299262 173.53904184484256 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.3322777800588596e-014 1.6053131046689373e-014 0
		 -1.3343478824422594e-014 1 -2.80478293425085e-015 0 -1.6125989432680399e-014 2.7401853778148664e-015 1 0
		 0.059066954286364756 2.4903598313754065 -21.643787247088397 1;
	setAttr ".radi" 0.78051908995045771;
createNode joint -n "joint9" -p "joint6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.071318752386332257 179.62233349558088 2.2740952969463764 ;
	setAttr ".bps" -type "matrix" -0.024132320390389751 -0.18555827532046426 -0.98233688598803559 0
		 -0.0045570936044083479 0.98263326142569329 -0.18550230844328022 0 0.99969838651988263 3.2950371512853221e-016 -0.024558827120686341 0
		 -0.15845990992176356 0.085033423377480322 -34.743688695427764 1;
	setAttr ".radi" 0.74151123232505867;
createNode joint -n "joint10" -p "joint9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 5.7694130463882844 -2.442490654175344e-015 -1.3743782694490272e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180.38434135782788 10.693682797681562 ;
	setAttr ".bps" -type "matrix" 0.031264223202721562 -5.3300849589541958e-017 0.99951115468889662 0
		 -3.4520997171938461e-016 1 1.6653345369377348e-016 0 -0.99951115468889662 -3.2992998259354709e-016 0.031264223202721535 0
		 -0.29768923402170161 -0.98552891112171781 -40.411195941395576 1;
	setAttr ".radi" 0.74151123232505867;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 50 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 49 -max 100 -ast 1 -aet 100 ";
	setAttr ".st" 6;
createNode imagePlane -n "imagePlane1";
	setAttr ".fc" 12;
	setAttr ".imn" -type "string" "C:/Users/Robert/Desktop/clownfish.jpg";
	setAttr ".cov" -type "short2" 600 600 ;
	setAttr ".dic" yes;
	setAttr ".dlc" no;
	setAttr ".c" -type "double3" -2.8421709430404007e-014 0 -2.2226664952995633e-014 ;
	setAttr ".w" 30;
	setAttr ".h" 30;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Robert/Desktop/buildingworlds/buildingworlds_week12/Assets/art/fish_uv_template.psd";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Robert/Desktop/buildingworlds/buildingworlds_week12/Assets/art/fish_uv_template.psd";
createNode place2dTexture -n "place2dTexture2";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "C:/Users/Robert/Desktop/buildingworlds/buildingworlds_week12/Assets/art/fish_uv_template.psd";
createNode place2dTexture -n "place2dTexture3";
createNode dagPose -n "bindPose2";
	setAttr -s 5 ".wm";
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.061705642267357419 1.3282203553833294
		 -30.842241724078221 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.051091320893071668 -0.69408757756354844 0.052714420550508345 0.71613776710029109 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4925356229165807 4.4243178518956362e-016
		 -2.9485451309030898e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0032711320224364866 -0.025048060257825341 -0.017088029535773961 0.99953483862204462 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.7830462288030908 -1.5087709400977465e-015
		 1.7612325655651013e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.040229153358059676 0.71274806260232337 -0.039461802905146684 0.69915275912221331 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.0463525947578365 -0.65778845099524996
		 0.098082216365367805 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.019841760223046786 0.99979750709989124 -0.00055684683774136798 0.0033074566804740073 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.7694130463882844 -2.442490654175344e-015
		 -1.3743782694490272e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.093184073772880585 0.99564324888335198 -0.0003125415872149937 -0.003339411003476205 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr ".bp" yes;
createNode animCurveTA -n "joint7_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1.065682310877307 9 -13.095630639234983
		 24 1.1261088323652386 31 -1.640911885824532 48 1.065682310877307 49 31.5470116072899
		 75 -32.41079331835919 100 31.5470116072899;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTA -n "joint7_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -32.420597599015146 9 -0.74733868509500223
		 24 36.980081722906441 31 -22.682074283662711 48 -32.420597599015146 49 7.9652730619240772
		 75 -1.3597755381773429 100 7.9652730619240772;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTA -n "joint7_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -1.7046887157142521 9 90.20981848238759
		 24 -0.45584500667779887 31 -179.89454872084735 48 -1.7046887157142521 49 -102.43686707207149
		 75 88.141899501104177 100 -102.43686707207149;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTU -n "joint7_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 24 1 31 1 48 1 49 1 75 1 100 1;
	setAttr -s 8 ".kit[0:7]"  9 9 9 9 1 9 9 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
createNode animCurveTL -n "joint7_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 3.4925356229165807 9 3.4925356229165807
		 24 3.4925356229165807 31 3.4925356229165807 48 3.4925356229165807 49 3.4925356229165807
		 75 3.4925356229165807 100 3.4925356229165807;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTL -n "joint7_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 4.4243178518956362e-016 9 4.4243178518956362e-016
		 24 4.4243178518956362e-016 31 4.4243178518956362e-016 48 4.4243178518956362e-016
		 49 4.4243178518956362e-016 75 4.4243178518956362e-016 100 4.4243178518956362e-016;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTL -n "joint7_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -2.9485451309030898e-017 9 -2.9485451309030898e-017
		 24 -2.9485451309030898e-017 31 -2.9485451309030898e-017 48 -2.9485451309030898e-017
		 49 -2.9485451309030898e-017 75 -2.9485451309030898e-017 100 -2.9485451309030898e-017;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTU -n "joint7_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 24 1 31 1 48 1 49 1 75 1 100 1;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTU -n "joint7_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 24 1 31 1 48 1 49 1 75 1 100 1;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTU -n "joint7_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 24 1 31 1 48 1 49 1 75 1 100 1;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTA -n "joint9_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 24 0 39 0 48 0 75 0 100 0;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "joint9_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 43.053803278157382 24 -45.000000000000014
		 39 -59.999999999999908 48 43.053803278157382 75 43.053803278157382 100 43.053803278157382;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "joint9_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 24 0 39 0 48 0 75 0 100 0;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "joint9_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 24 1 39 1 48 1 75 1 100 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 1 9 9;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
createNode animCurveTL -n "joint9_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -4.0463525947578365 24 -4.0463525947578365
		 39 -4.0463525947578365 48 -4.0463525947578365 75 -4.0463525947578365 100 -4.0463525947578365;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "joint9_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.65778845099524996 24 -0.65778845099524996
		 39 -0.65778845099524996 48 -0.65778845099524996 75 -0.65778845099524996 100 -0.65778845099524996;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "joint9_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.098082216365367805 24 0.098082216365367805
		 39 0.098082216365367805 48 0.098082216365367805 75 0.098082216365367805 100 0.098082216365367805;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "joint9_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 24 1 39 1 48 1 75 4.7048154006900145
		 100 1;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "joint9_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 24 1 39 1 48 1 75 4.7048154006900145
		 100 1;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "joint9_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 24 1 39 1 48 1 75 4.7048154006900145
		 100 1;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode tweak -n "tweak2";
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster2";
	setAttr ".skm" 2;
	setAttr -s 104 ".wl";
	setAttr -s 2 ".wl[0].w[1:2]"  0.5 1;
	setAttr -s 2 ".wl[1].w[1:2]"  0.5 1;
	setAttr -s 2 ".wl[2].w[1:2]"  0.5 1;
	setAttr -s 2 ".wl[3].w[1:2]"  0.5 1;
	setAttr -s 2 ".wl[4].w[1:2]"  0.5 1;
	setAttr -s 2 ".wl[5].w[1:2]"  0.5 1;
	setAttr -s 2 ".wl[6].w[1:2]"  0.54175676426897301 1;
	setAttr -s 2 ".wl[7].w[1:2]"  0.55255450555946084 1;
	setAttr -s 2 ".wl[8].w[1:2]"  0.65063882869396372 1;
	setAttr -s 2 ".wl[9].w[1:2]"  0.65930062600843331 1;
	setAttr -s 2 ".wl[10].w[1:2]"  0.76891031251052311 0.23108968748947686;
	setAttr -s 2 ".wl[11].w[1:2]"  0.77516725369385431 0.22483274630614564;
	setAttr -s 2 ".wl[12].w[1:2]"  0.86490518599756605 0.13509481400243398;
	setAttr -s 2 ".wl[13].w[1:2]"  0.8677249678370732 0.13227503216292674;
	setAttr -s 2 ".wl[14].w[0:1]"  0.5071684864571977 0.4928315135428023;
	setAttr -s 2 ".wl[15].w[0:1]"  0.50699410245065313 0.49300589754934693;
	setAttr -s 2 ".wl[16].w[0:1]"  0.55555707359099193 0.44444292640900807;
	setAttr -s 2 ".wl[17].w[0:1]"  0.55544370998342973 0.44455629001657032;
	setAttr -s 2 ".wl[18].w[0:1]"  0.67343911174934989 0.32656088825065011;
	setAttr -s 2 ".wl[19].w[0:1]"  0.67394237052227679 0.32605762947772321;
	setAttr -s 2 ".wl[20].w[0:1]"  0.78641937950533869 0.21358062049466128;
	setAttr -s 2 ".wl[21].w[0:1]"  0.7872398653464463 0.21276013465355373;
	setAttr -s 2 ".wl[22].w[0:1]"  0.83466101758438482 0.16533898241561518;
	setAttr -s 2 ".wl[23].w[0:1]"  0.83469268936175989 0.16530731063824011;
	setAttr -s 2 ".wl[24].w[3:4]"  0.72158976051892232 0.27841023948107768;
	setAttr -s 2 ".wl[25].w[3:4]"  0.72199490561224111 0.278005094387759;
	setAttr -s 2 ".wl[26].w[3:4]"  0.8717498598203699 0.1282501401796301;
	setAttr -s 2 ".wl[27].w[3:4]"  0.87077281627443937 0.12922718372556066;
	setAttr -s 2 ".wl[28].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[29].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[30].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[31].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[32].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[33].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[34].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[35].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[36].w[3:4]"  0.77737321163966422 0.22262678836033581;
	setAttr -s 2 ".wl[37].w[3:4]"  0.77693814143683571 0.22306185856316432;
	setAttr -s 2 ".wl[38].w[3:4]"  0.65756580497791939 0.34243419502208061;
	setAttr -s 2 ".wl[39].w[3:4]"  0.65798697961455466 0.3420130203854454;
	setAttr -s 2 ".wl[40].w[3:4]"  0.763913032413155 0.23608696758684494;
	setAttr -s 2 ".wl[41].w[3:4]"  0.76446794343434277 0.23553205656565729;
	setAttr -s 2 ".wl[42].w[0:1]"  0.82242679335766011 0.17757320664233991;
	setAttr -s 2 ".wl[43].w[0:1]"  0.82220017050211713 0.17779982949788287;
	setAttr -s 2 ".wl[44].w[0:1]"  0.78342216818303978 0.21657783181696022;
	setAttr -s 2 ".wl[45].w[0:1]"  0.78322152270960976 0.21677847729039032;
	setAttr -s 2 ".wl[46].w[0:1]"  0.70046382190182443 0.29953617809817557;
	setAttr -s 2 ".wl[47].w[0:1]"  0.70096659849071907 0.29903340150928098;
	setAttr -s 2 ".wl[48].w[0:1]"  0.59721436483792556 0.40278563516207455;
	setAttr -s 2 ".wl[49].w[0:1]"  0.59724839015259135 0.40275160984740865;
	setAttr -s 2 ".wl[50].w[0:1]"  0.51748561626864364 0.4825143837313563;
	setAttr -s 2 ".wl[51].w[0:1]"  0.51734669492092689 0.48265330507907317;
	setAttr -s 2 ".wl[52].w[1:2]"  0.71939752246179578 0.28060247753820416;
	setAttr -s 2 ".wl[53].w[1:2]"  0.72259259166862211 0.27740740833137795;
	setAttr -s 2 ".wl[54].w[1:2]"  0.60956580163297902 0.39043419836702103;
	setAttr -s 2 ".wl[55].w[1:2]"  0.61239981865675686 0.3876001813432432;
	setAttr -s 2 ".wl[56].w[3:4]"  0.81773631109026068 0.18226368890973935;
	setAttr -s 2 ".wl[57].w[3:4]"  0.91761821528972465 0.08238178471027531;
	setAttr -s 2 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.95592436652708901;
	setAttr ".wl[58].w[4]" 0.044075633472911019;
	setAttr -s 2 ".wl[59].w[0:1]"  0.9746483032102391 0.025351696789761003;
	setAttr -s 2 ".wl[60].w[0:1]"  0.88877267391490145 0.11122732608509858;
	setAttr -s 2 ".wl[61].w[0:1]"  0.78811065873804176 0.2118893412619583;
	setAttr -s 2 ".wl[62].w[0:1]"  0.55343062934142706 0.44656937065857294;
	setAttr -s 2 ".wl[63].w[1:2]"  0.94283689934749826 0.057163100652501686;
	setAttr -s 2 ".wl[64].w[1:2]"  0.86212921967676337 0.13787078032323666;
	setAttr -s 2 ".wl[65].w[1:2]"  0.67369331914580155 0.32630668085419845;
	setAttr -s 2 ".wl[66].w[3:4]"  0.84963236732459591 0.15036763267540412;
	setAttr -s 2 ".wl[67].w[3:4]"  0.91314907951855717 0.086850920481442884;
	setAttr -s 2 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.95925044829145811;
	setAttr ".wl[68].w[4]" 0.040749551708541908;
	setAttr -s 2 ".wl[69].w[0:1]"  0.95245120983848597 0.04754879016151408;
	setAttr -s 2 ".wl[70].w[0:1]"  0.89017460585431463 0.1098253941456854;
	setAttr -s 2 ".wl[71].w[0:1]"  0.80659932157511127 0.19340067842488878;
	setAttr -s 2 ".wl[72].w[0:1]"  0.54043578974631634 0.45956421025368366;
	setAttr -s 2 ".wl[73].w[1:2]"  0.97506992110917945 0.024930078890820599;
	setAttr -s 2 ".wl[74].w[1:2]"  0.91300690742251189 0.086993092577488093;
	setAttr -s 2 ".wl[75].w[1:2]"  0.75540486958824316 0.24459513041175682;
	setAttr -s 2 ".wl[76].w[3:4]"  0.82618247545456502 0.17381752454543495;
	setAttr -s 2 ".wl[77].w[3:4]"  0.91647597304927486 0.083524026950725236;
	setAttr -s 2 ".wl[78].w";
	setAttr ".wl[78].w[0]" 0.9523610297280839;
	setAttr ".wl[78].w[4]" 0.047638970271916055;
	setAttr -s 2 ".wl[79].w[0:1]"  0.9662812720409778 0.033718727959022192;
	setAttr -s 2 ".wl[80].w[0:1]"  0.85573461144374041 0.14426538855625953;
	setAttr -s 2 ".wl[81].w[0:1]"  0.74545455092155954 0.2545454490784404;
	setAttr -s 2 ".wl[82].w[0:1]"  0.54409804517533111 0.45590195482466894;
	setAttr -s 2 ".wl[83].w[1:2]"  0.91139180420922794 0.088608195790772046;
	setAttr -s 2 ".wl[84].w[1:2]"  0.80956699583885294 0.19043300416114708;
	setAttr -s 2 ".wl[85].w[1:2]"  0.63225477390827944 1;
	setAttr -s 2 ".wl[86].w[3:4]"  0.85572508444672646 0.14427491555327351;
	setAttr -s 2 ".wl[87].w[3:4]"  0.91053058294738387 0.089469417052616129;
	setAttr -s 2 ".wl[88].w";
	setAttr ".wl[88].w[0]" 0.95301762063302264;
	setAttr ".wl[88].w[4]" 0.046982379366977328;
	setAttr -s 2 ".wl[89].w[0:1]"  0.94182469030965155 0.05817530969034846;
	setAttr -s 2 ".wl[90].w[0:1]"  0.84981096554362445 0.15018903445637549;
	setAttr -s 2 ".wl[91].w[0:1]"  0.74399739612531868 0.25600260387468132;
	setAttr -s 2 ".wl[92].w[0:1]"  0.52862051488173434 0.47137948511826561;
	setAttr -s 2 ".wl[93].w[1:2]"  0.93934535619479742 0.060654643805202614;
	setAttr -s 2 ".wl[94].w[1:2]"  0.8417291280044138 0.37003558874130249;
	setAttr -s 2 ".wl[95].w[1:2]"  0.66366363074953838 1;
	setAttr -s 2 ".wl[96].w[3:4]"  0.66239471538308681 0.33760528461691314;
	setAttr -s 2 ".wl[97].w[3:4]"  0.66382918633809995 0.33617081366190005;
	setAttr -s 2 ".wl[98].w[3:4]"  0.73174731066345411 0.26825268933654595;
	setAttr -s 2 ".wl[99].w[3:4]"  0.66578162968677346 0.33421837031322654;
	setAttr -s 2 ".wl[100].w[3:4]"  0.56941767240711172 0.43058232759288823;
	setAttr -s 2 ".wl[101].w[3:4]"  0.56916097044914016 0.43083902955085995;
	setAttr -s 2 ".wl[102].w[3:4]"  0.61113191533895683 0.38886808466104328;
	setAttr -s 2 ".wl[103].w[3:4]"  0.66898275278307728 0.33101724721692266;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.030927249075978745 -0.0045778725476654123 -0.99951115468889573 0
		 0.14642527716044151 0.98922173359085075 6.3230670699354619e-016 0 0.98873815718474245 -0.14635369785027449 0.031264223202732838 0
		 30.298507826276531 -5.8274980882880536 1.0259342070876869 1;
	setAttr ".pm[1]" -type "matrix" -0.019134069263797692 0.0021668454700255837 -0.99981457889656566 0
		 0.11252615899432065 0.99364876266313784 -1.3318773167680931e-014 0 0.99346451921313894 -0.1125052942697549 -0.019256371046559556 0
		 27.006280485039326 -4.9097116073401263 -0.35772479605617014 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999978 -1.3322777800588549e-014 -1.6053131046689408e-014 0
		 1.3343478824422637e-014 1 2.8047829342506358e-015 0 1.6125989432680358e-014 -2.7401853778150814e-015 1 0
		 -0.059066954286048946 -2.4903598313754651 21.64378724708839 1;
	setAttr ".pm[3]" -type "matrix" -0.024132320390389716 -0.0045570936044083228 0.9996983865198823 0
		 -0.18555827532046421 0.98263326142569318 3.4954678040932648e-016 0 -0.98233688598803515 -0.18550230844328019 -0.024558827120686362 0
		 -34.118052310732956 -6.5293132436222132 -0.69485212792908257 1;
	setAttr ".pm[4]" -type "matrix" 0.0312642232027215 -3.2810228821010136e-016 -0.99951115468889551 0
		 -1.5565932298815324e-016 1 -3.502477565103653e-016 0 0.99951115468889551 6.3589798336216904e-017 0.031264223202721528 0
		 40.400748140401006 0.98552891112172014 0.96588093976522127 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  2.5 2.5 2.5 2.5 2.5;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".ptw" -type "doubleArray" 104 1 1 1 1 1 1 1 1 1 1 0.23108968748947686
		 0.22483274630614564 0.13509481400243398 0.13227503216292674 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.28060247753820416 0.27740740833137795
		 0.39043419836702103 0.3876001813432432 0 0 0 0 0 0 0 0.057163100652501686 0.13787078032323666
		 0.32630668085419845 0 0 0 0 0 0 0 0.024930078890820599 0.086993092577488093 0.24459513041175682
		 0 0 0 0 0 0 0 0.088608195790772046 0.19043300416114708 1 0 0 0 0 0 0 0 0.060654643805202614
		 0.37003558874130249 1 0 0 0 0 0 0 0 0 ;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
select -ne :time1;
	setAttr ".o" 49;
	setAttr ".unw" 49;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
connectAttr "imagePlane1.msg" ":sideShape.ip" -na;
connectAttr "skinCluster2GroupId.id" "FishShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "FishShape.iog.og[0].gco";
connectAttr "groupId4.id" "FishShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "FishShape.iog.og[1].gco";
connectAttr "skinCluster2.og[0]" "FishShape.i";
connectAttr "tweak2.vl[0].vt[0]" "FishShape.twl";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7_scaleX.o" "joint7.sx";
connectAttr "joint7_scaleY.o" "joint7.sy";
connectAttr "joint7_scaleZ.o" "joint7.sz";
connectAttr "joint7_rotateX.o" "joint7.rx";
connectAttr "joint7_rotateY.o" "joint7.ry";
connectAttr "joint7_rotateZ.o" "joint7.rz";
connectAttr "joint7_visibility.o" "joint7.v";
connectAttr "joint7_translateX.o" "joint7.tx";
connectAttr "joint7_translateY.o" "joint7.ty";
connectAttr "joint7_translateZ.o" "joint7.tz";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint6.s" "joint9.is";
connectAttr "joint9_scaleX.o" "joint9.sx";
connectAttr "joint9_scaleY.o" "joint9.sy";
connectAttr "joint9_scaleZ.o" "joint9.sz";
connectAttr "joint9_rotateX.o" "joint9.rx";
connectAttr "joint9_rotateY.o" "joint9.ry";
connectAttr "joint9_rotateZ.o" "joint9.rz";
connectAttr "joint9_visibility.o" "joint9.v";
connectAttr "joint9_translateX.o" "joint9.tx";
connectAttr "joint9_translateY.o" "joint9.ty";
connectAttr "joint9_translateZ.o" "joint9.tz";
connectAttr "joint9.s" "joint10.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "joint6.msg" "bindPose2.m[0]";
connectAttr "joint7.msg" "bindPose2.m[1]";
connectAttr "joint8.msg" "bindPose2.m[2]";
connectAttr "joint9.msg" "bindPose2.m[3]";
connectAttr "joint10.msg" "bindPose2.m[4]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[0]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "joint6.bps" "bindPose2.wm[0]";
connectAttr "joint7.bps" "bindPose2.wm[1]";
connectAttr "joint8.bps" "bindPose2.wm[2]";
connectAttr "joint9.bps" "bindPose2.wm[3]";
connectAttr "joint10.bps" "bindPose2.wm[4]";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "FishShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "FishShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "FishShapeOrig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "joint6.wm" "skinCluster2.ma[0]";
connectAttr "joint7.wm" "skinCluster2.ma[1]";
connectAttr "joint8.wm" "skinCluster2.ma[2]";
connectAttr "joint9.wm" "skinCluster2.ma[3]";
connectAttr "joint10.wm" "skinCluster2.ma[4]";
connectAttr "joint6.liw" "skinCluster2.lw[0]";
connectAttr "joint7.liw" "skinCluster2.lw[1]";
connectAttr "joint8.liw" "skinCluster2.lw[2]";
connectAttr "joint9.liw" "skinCluster2.lw[3]";
connectAttr "joint10.liw" "skinCluster2.lw[4]";
connectAttr "joint8.msg" "skinCluster2.ptt";
connectAttr "FishShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.oc" ":lambert1.c";
connectAttr "imagePlane1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file3.msg" ":initialMaterialInfo.t" -na;
// End of fishie.ma
