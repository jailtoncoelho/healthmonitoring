; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [216 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 52
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 81
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 7
	i32 57305218, ; 3: Xamarin.KotlinX.Coroutines.Play.Services => 0x36a6882 => 94
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 63
	i32 103834273, ; 5: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 72
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 63
	i32 134690465, ; 7: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 89
	i32 160529393, ; 8: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 16
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 34
	i32 166922606, ; 10: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 20
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 65
	i32 201929280, ; 12: Xamarin.Firebase.Database => 0xc093240 => 79
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 49
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 105
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 37
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 47
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 25
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 11
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 50
	i32 389971796, ; 20: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 21
	i32 393699800, ; 21: Firebase => 0x177761d8 => 2
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 46
	i32 453011810, ; 23: Xamarin.Firebase.Database.Collection.dll => 0x1b006962 => 78
	i32 465846621, ; 24: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 25: System.dll => 0x1bff388e => 9
	i32 476646585, ; 26: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 47
	i32 486930444, ; 27: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 56
	i32 493301629, ; 28: Xamarin.Firebase.AppCheck.Interop.dll => 0x1d672f7d => 73
	i32 514659665, ; 29: Xamarin.Android.Support.Compat => 0x1ead1551 => 20
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 97
	i32 527452488, ; 31: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 89
	i32 571524804, ; 32: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 23
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 101
	i32 610194910, ; 34: System.Reactive.dll => 0x245ed5de => 13
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 43
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 69
	i32 666292255, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 31
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 106
	i32 691348768, ; 39: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 91
	i32 692692150, ; 40: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 19
	i32 700284507, ; 41: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 86
	i32 720511267, ; 42: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 90
	i32 775507847, ; 43: System.IO.Compression => 0x2e394f87 => 100
	i32 809851609, ; 44: System.Drawing.Common.dll => 0x30455ad9 => 99
	i32 843511501, ; 45: Xamarin.AndroidX.Print => 0x3246f6cd => 59
	i32 858724192, ; 46: Xamarin.AndroidX.ConstraintLayout.Solver => 0x332f1760 => 38
	i32 928116545, ; 47: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 81
	i32 955402788, ; 48: Newtonsoft.Json => 0x38f24a24 => 7
	i32 956575887, ; 49: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 90
	i32 967690846, ; 50: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 50
	i32 1007342521, ; 51: Xamarin.Android.Wear => 0x3c0ad3b9 => 24
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 62
	i32 1031528504, ; 53: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 80
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 30
	i32 1052210849, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 53
	i32 1084122840, ; 56: Xamarin.Kotlin.StdLib => 0x409e66d8 => 88
	i32 1098259244, ; 57: System => 0x41761b2c => 9
	i32 1175144683, ; 58: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 67
	i32 1204270330, ; 59: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 31
	i32 1246548578, ; 60: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 35
	i32 1264511973, ; 61: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 64
	i32 1264890200, ; 62: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 92
	i32 1267360935, ; 63: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 68
	i32 1275534314, ; 64: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 91
	i32 1278448581, ; 65: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 28
	i32 1293217323, ; 66: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 45
	i32 1333047053, ; 67: Xamarin.Firebase.Common => 0x4f74af0d => 75
	i32 1365406463, ; 68: System.ServiceModel.Internals.dll => 0x516272ff => 104
	i32 1376866003, ; 69: Xamarin.AndroidX.SavedState => 0x52114ed3 => 62
	i32 1379897097, ; 70: Xamarin.JavaX.Inject => 0x523f8f09 => 85
	i32 1406073936, ; 71: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 39
	i32 1411702249, ; 72: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 74
	i32 1462112819, ; 73: System.IO.Compression.dll => 0x57261233 => 100
	i32 1469204771, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 29
	i32 1582372066, ; 75: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 44
	i32 1587447679, ; 76: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 16
	i32 1592978981, ; 77: System.Runtime.Serialization.dll => 0x5ef2ee25 => 103
	i32 1597949149, ; 78: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 80
	i32 1622152042, ; 79: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 55
	i32 1636350590, ; 80: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 42
	i32 1639515021, ; 81: System.Net.Http.dll => 0x61b9038d => 10
	i32 1657153582, ; 82: System.Runtime => 0x62c6282e => 14
	i32 1658241508, ; 83: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 66
	i32 1664238415, ; 84: Xamarin.Firebase.Database.Collection => 0x6332434f => 78
	i32 1670060433, ; 85: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 37
	i32 1698840827, ; 86: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 87
	i32 1766324549, ; 87: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 65
	i32 1776026572, ; 88: System.Core.dll => 0x69dc03cc => 8
	i32 1788241197, ; 89: Xamarin.AndroidX.Fragment => 0x6a96652d => 46
	i32 1808609942, ; 90: Xamarin.AndroidX.Loader => 0x6bcd3296 => 55
	i32 1813058853, ; 91: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 88
	i32 1875053220, ; 92: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 74
	i32 1877418711, ; 93: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 23
	i32 1885316902, ; 94: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 32
	i32 1904755420, ; 95: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 1
	i32 1908813208, ; 96: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 83
	i32 1919157823, ; 97: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 57
	i32 1983156543, ; 98: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 87
	i32 2019465201, ; 99: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 53
	i32 2035859547, ; 100: HealthMonitoring => 0x7958c05b => 0
	i32 2055257422, ; 101: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 51
	i32 2079903147, ; 102: System.Runtime.dll => 0x7bf8cdab => 14
	i32 2090596640, ; 103: System.Numerics.Vectors => 0x7c9bf920 => 12
	i32 2097448633, ; 104: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 48
	i32 2129483829, ; 105: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 82
	i32 2174878672, ; 106: Xamarin.Firebase.Annotations => 0x81a203d0 => 72
	i32 2192229482, ; 107: Xamarin.AndroidX.PercentLayout.dll => 0x82aac46a => 58
	i32 2201107256, ; 108: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 93
	i32 2201231467, ; 109: System.Net.Http => 0x8334206b => 10
	i32 2217644978, ; 110: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 67
	i32 2225853105, ; 111: Xamarin.Firebase.Common.Ktx => 0x84abd2b1 => 76
	i32 2244775296, ; 112: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 56
	i32 2256548716, ; 113: Xamarin.AndroidX.MultiDex => 0x8680336c => 57
	i32 2279755925, ; 114: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 61
	i32 2315684594, ; 115: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 26
	i32 2330457430, ; 116: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 21
	i32 2330891174, ; 117: Xamarin.Android.Wear.dll => 0x8aee93a6 => 24
	i32 2471841756, ; 118: netstandard.dll => 0x93554fdc => 95
	i32 2475788418, ; 119: Java.Interop.dll => 0x93918882 => 3
	i32 2501346920, ; 120: System.Data.DataSetExtensions => 0x95178668 => 98
	i32 2505896520, ; 121: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 52
	i32 2536684394, ; 122: Xamarin.AndroidX.Wear => 0x9732bb6a => 71
	i32 2581819634, ; 123: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 68
	i32 2605712449, ; 124: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 93
	i32 2620871830, ; 125: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 42
	i32 2671474046, ; 126: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 92
	i32 2701096212, ; 127: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 66
	i32 2732626843, ; 128: Xamarin.AndroidX.Activity => 0xa2e0939b => 25
	i32 2737747696, ; 129: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 29
	i32 2770495804, ; 130: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 86
	i32 2778768386, ; 131: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 70
	i32 2804607052, ; 132: Xamarin.Firebase.Components.dll => 0xa72ae84c => 77
	i32 2810250172, ; 133: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 39
	i32 2819470561, ; 134: System.Xml.dll => 0xa80db4e1 => 15
	i32 2847418871, ; 135: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 82
	i32 2853208004, ; 136: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 70
	i32 2870458124, ; 137: Xamarin.Firebase.AppCheck.Interop => 0xab17b70c => 73
	i32 2903344695, ; 138: System.ComponentModel.Composition => 0xad0d8637 => 102
	i32 2905242038, ; 139: mscorlib.dll => 0xad2a79b6 => 6
	i32 2919462931, ; 140: System.Numerics.Vectors.dll => 0xae037813 => 12
	i32 2921128767, ; 141: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 27
	i32 2978675010, ; 142: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 45
	i32 3016983068, ; 143: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 64
	i32 3024354802, ; 144: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 49
	i32 3058099980, ; 145: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 84
	i32 3068715062, ; 146: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 17
	i32 3071899978, ; 147: Xamarin.Firebase.Common.dll => 0xb719794a => 75
	i32 3111772706, ; 148: System.Runtime.Serialization => 0xb979e222 => 103
	i32 3150271759, ; 149: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0xbbc5550f => 94
	i32 3204380047, ; 150: System.Data.dll => 0xbefef58f => 96
	i32 3211777861, ; 151: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 44
	i32 3230466174, ; 152: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 83
	i32 3247949154, ; 153: Mono.Security => 0xc197c562 => 107
	i32 3267021929, ; 154: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 33
	i32 3316212173, ; 155: Xamarin.Android.Support.Percent.dll => 0xc5a961cd => 22
	i32 3317135071, ; 156: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 43
	i32 3317144872, ; 157: System.Data => 0xc5b79d28 => 96
	i32 3322403133, ; 158: Firebase.dll => 0xc607d93d => 2
	i32 3329491243, ; 159: Xamarin.AndroidX.ConstraintLayout.Solver.dll => 0xc674012b => 38
	i32 3340431453, ; 160: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 32
	i32 3345895724, ; 161: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 60
	i32 3353484488, ; 162: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 48
	i32 3362522851, ; 163: Xamarin.AndroidX.Core => 0xc86c06e3 => 41
	i32 3366347497, ; 164: Java.Interop => 0xc8a662e9 => 3
	i32 3374999561, ; 165: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 61
	i32 3404865022, ; 166: System.ServiceModel.Internals => 0xcaf21dfe => 104
	i32 3429136800, ; 167: System.Xml => 0xcc6479a0 => 15
	i32 3430777524, ; 168: netstandard => 0xcc7d82b4 => 95
	i32 3439690031, ; 169: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 19
	i32 3476120550, ; 170: Mono.Android => 0xcf3163e6 => 5
	i32 3486566296, ; 171: System.Transactions => 0xcfd0c798 => 97
	i32 3493954962, ; 172: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 36
	i32 3501239056, ; 173: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 33
	i32 3509114376, ; 174: System.Xml.Linq => 0xd128d608 => 106
	i32 3567349600, ; 175: System.ComponentModel.Composition.dll => 0xd4a16f60 => 102
	i32 3596207933, ; 176: LiteDB.dll => 0xd659c73d => 4
	i32 3618132607, ; 177: Xamarin.Android.Support.Percent => 0xd7a8527f => 22
	i32 3619593299, ; 178: Xamarin.Firebase.Database.dll => 0xd7be9c53 => 79
	i32 3627220390, ; 179: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 59
	i32 3629588173, ; 180: LiteDB => 0xd8571ecd => 4
	i32 3633644679, ; 181: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 27
	i32 3641597786, ; 182: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 51
	i32 3672681054, ; 183: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3676310014, ; 184: System.Web.Services.dll => 0xdb2009fe => 105
	i32 3681174138, ; 185: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 17
	i32 3684561358, ; 186: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 36
	i32 3684933406, ; 187: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 1
	i32 3689375977, ; 188: System.Drawing.Common => 0xdbe768e9 => 99
	i32 3706696989, ; 189: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 40
	i32 3718780102, ; 190: Xamarin.AndroidX.Annotation => 0xdda814c6 => 26
	i32 3731644420, ; 191: System.Reactive => 0xde6c6004 => 13
	i32 3786282454, ; 192: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 34
	i32 3829621856, ; 193: System.Numerics.dll => 0xe4436460 => 11
	i32 3862817207, ; 194: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 18
	i32 3874897629, ; 195: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 18
	i32 3888767677, ; 196: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 60
	i32 3896760992, ; 197: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 41
	i32 3910130544, ; 198: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 35
	i32 3920810846, ; 199: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 101
	i32 3921031405, ; 200: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 69
	i32 3934056515, ; 201: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 85
	i32 3945713374, ; 202: System.Data.DataSetExtensions.dll => 0xeb2ecede => 98
	i32 3955647286, ; 203: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 30
	i32 3970018735, ; 204: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 84
	i32 4012280714, ; 205: HealthMonitoring.dll => 0xef268b8a => 0
	i32 4015948917, ; 206: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 28
	i32 4029399671, ; 207: Xamarin.AndroidX.Wear.dll => 0xf02bc277 => 71
	i32 4105002889, ; 208: Mono.Security.dll => 0xf4ad5f89 => 107
	i32 4151237749, ; 209: System.Core => 0xf76edc75 => 8
	i32 4157403133, ; 210: Xamarin.Firebase.Common.Ktx.dll => 0xf7cceffd => 76
	i32 4182413190, ; 211: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 54
	i32 4256097574, ; 212: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 40
	i32 4278561556, ; 213: Xamarin.AndroidX.PercentLayout => 0xff05ab14 => 58
	i32 4284549794, ; 214: Xamarin.Firebase.Components => 0xff610aa2 => 77
	i32 4292120959 ; 215: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 54
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [216 x i32] [
	i32 52, i32 81, i32 7, i32 94, i32 63, i32 72, i32 63, i32 89, ; 0..7
	i32 16, i32 34, i32 20, i32 65, i32 79, i32 49, i32 105, i32 37, ; 8..15
	i32 47, i32 25, i32 11, i32 50, i32 21, i32 2, i32 46, i32 78, ; 16..23
	i32 6, i32 9, i32 47, i32 56, i32 73, i32 20, i32 97, i32 89, ; 24..31
	i32 23, i32 101, i32 13, i32 43, i32 69, i32 31, i32 106, i32 91, ; 32..39
	i32 19, i32 86, i32 90, i32 100, i32 99, i32 59, i32 38, i32 81, ; 40..47
	i32 7, i32 90, i32 50, i32 24, i32 62, i32 80, i32 30, i32 53, ; 48..55
	i32 88, i32 9, i32 67, i32 31, i32 35, i32 64, i32 92, i32 68, ; 56..63
	i32 91, i32 28, i32 45, i32 75, i32 104, i32 62, i32 85, i32 39, ; 64..71
	i32 74, i32 100, i32 29, i32 44, i32 16, i32 103, i32 80, i32 55, ; 72..79
	i32 42, i32 10, i32 14, i32 66, i32 78, i32 37, i32 87, i32 65, ; 80..87
	i32 8, i32 46, i32 55, i32 88, i32 74, i32 23, i32 32, i32 1, ; 88..95
	i32 83, i32 57, i32 87, i32 53, i32 0, i32 51, i32 14, i32 12, ; 96..103
	i32 48, i32 82, i32 72, i32 58, i32 93, i32 10, i32 67, i32 76, ; 104..111
	i32 56, i32 57, i32 61, i32 26, i32 21, i32 24, i32 95, i32 3, ; 112..119
	i32 98, i32 52, i32 71, i32 68, i32 93, i32 42, i32 92, i32 66, ; 120..127
	i32 25, i32 29, i32 86, i32 70, i32 77, i32 39, i32 15, i32 82, ; 128..135
	i32 70, i32 73, i32 102, i32 6, i32 12, i32 27, i32 45, i32 64, ; 136..143
	i32 49, i32 84, i32 17, i32 75, i32 103, i32 94, i32 96, i32 44, ; 144..151
	i32 83, i32 107, i32 33, i32 22, i32 43, i32 96, i32 2, i32 38, ; 152..159
	i32 32, i32 60, i32 48, i32 41, i32 3, i32 61, i32 104, i32 15, ; 160..167
	i32 95, i32 19, i32 5, i32 97, i32 36, i32 33, i32 106, i32 102, ; 168..175
	i32 4, i32 22, i32 79, i32 59, i32 4, i32 27, i32 51, i32 5, ; 176..183
	i32 105, i32 17, i32 36, i32 1, i32 99, i32 40, i32 26, i32 13, ; 184..191
	i32 34, i32 11, i32 18, i32 18, i32 60, i32 41, i32 35, i32 101, ; 192..199
	i32 69, i32 85, i32 98, i32 30, i32 84, i32 0, i32 28, i32 71, ; 200..207
	i32 107, i32 8, i32 76, i32 54, i32 40, i32 58, i32 77, i32 54 ; 216..215
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
