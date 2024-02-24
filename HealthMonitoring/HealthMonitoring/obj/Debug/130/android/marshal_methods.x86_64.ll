; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [216 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 5
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 34
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 62
	i64 233177144301842968, ; 3: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 35
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 63
	i64 316157742385208084, ; 5: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 40
	i64 464346026994987652, ; 6: System.Reactive.dll => 0x671b04057e67284 => 13
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 52
	i64 687654259221141486, ; 8: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 82
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 99
	i64 720058930071658100, ; 10: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 48
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 45
	i64 940822596282819491, ; 12: System.Transactions => 0xd0e792aa81923a3 => 97
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 107
	i64 1315114680217950157, ; 14: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 31
	i64 1368633735297491523, ; 15: Xamarin.Firebase.Database.Collection.dll => 0x12fe5d218405e243 => 78
	i64 1392315331768750440, ; 16: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 74
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 103
	i64 1465843056802068477, ; 18: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 77
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 29
	i64 1628611045998245443, ; 20: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 54
	i64 1636321030536304333, ; 21: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 49
	i64 1731380447121279447, ; 22: Newtonsoft.Json => 0x18071957e9b889d7 => 7
	i64 1795316252682057001, ; 23: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 30
	i64 1836611346387731153, ; 24: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 62
	i64 1860886102525309849, ; 25: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 23
	i64 1875917498431009007, ; 26: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 26
	i64 1981742497975770890, ; 27: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 53
	i64 2064708342624596306, ; 28: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 89
	i64 2133195048986300728, ; 29: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 7
	i64 2136356949452311481, ; 30: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 57
	i64 2203565783020068373, ; 31: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 92
	i64 2262844636196693701, ; 32: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 45
	i64 2284400282711631002, ; 33: System.Web.Services => 0x1fb3d1f42fd4249a => 105
	i64 2329709569556905518, ; 34: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 51
	i64 2470498323731680442, ; 35: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 39
	i64 2479423007379663237, ; 36: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 67
	i64 2497223385847772520, ; 37: System.Runtime => 0x22a7eb7046413568 => 14
	i64 2547086958574651984, ; 38: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 25
	i64 2592350477072141967, ; 39: System.Xml.dll => 0x23f9e10627330e8f => 15
	i64 2624866290265602282, ; 40: mscorlib.dll => 0x246d65fbde2db8ea => 6
	i64 2787234703088983483, ; 41: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 64
	i64 2951672403965468947, ; 42: Xamarin.Firebase.Database.Collection => 0x28f67269abaf6113 => 78
	i64 3289520064315143713, ; 43: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 50
	i64 3303437397778967116, ; 44: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 27
	i64 3311221304742556517, ; 45: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 12
	i64 3344514922410554693, ; 46: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 93
	i64 3364695309916733813, ; 47: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 75
	i64 3411255996856937470, ; 48: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 83
	i64 3493805808809882663, ; 49: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 66
	i64 3522470458906976663, ; 50: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 65
	i64 3531994851595924923, ; 51: System.Numerics => 0x31042a9aade235bb => 11
	i64 3571415421602489686, ; 52: System.Runtime.dll => 0x319037675df7e556 => 14
	i64 3716579019761409177, ; 53: netstandard.dll => 0x3393f0ed5c8c5c99 => 95
	i64 3727469159507183293, ; 54: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 61
	i64 3768479575991719956, ; 55: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0x344c5435464d1814 => 94
	i64 4201423742386704971, ; 56: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 40
	i64 4247996603072512073, ; 57: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 84
	i64 4525561845656915374, ; 58: System.ServiceModel.Internals => 0x3ece06856b710dae => 104
	i64 4635586728991130860, ; 59: Xamarin.AndroidX.Wear => 0x4054e991d30804ec => 71
	i64 4636684751163556186, ; 60: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 69
	i64 4702770163853758138, ; 61: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 77
	i64 4782108999019072045, ; 62: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 33
	i64 4794310189461587505, ; 63: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 25
	i64 4795410492532947900, ; 64: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 65
	i64 5205316157927637098, ; 65: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 56
	i64 5376510917114486089, ; 66: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 67
	i64 5451019430259338467, ; 67: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 37
	i64 5457150482131305259, ; 68: Xamarin.AndroidX.PercentLayout => 0x4bbbb1734549c32b => 58
	i64 5507995362134886206, ; 69: System.Core.dll => 0x4c705499688c873e => 8
	i64 5574231584441077149, ; 70: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 28
	i64 5757522595884336624, ; 71: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 36
	i64 5767696078500135884, ; 72: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 19
	i64 5898204443682172947, ; 73: Xamarin.Android.Support.Percent.dll => 0x51daa1b1064e7013 => 22
	i64 6058153446002397952, ; 74: Xamarin.Firebase.Common.Ktx => 0x5412e2762fc81300 => 76
	i64 6118452257458269359, ; 75: Xamarin.Firebase.AppCheck.Interop.dll => 0x54e91be944fcacaf => 73
	i64 6319713645133255417, ; 76: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 52
	i64 6401687960814735282, ; 77: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 51
	i64 6548213210057960872, ; 78: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 43
	i64 6589202984700901502, ; 79: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 80
	i64 6591024623626361694, ; 80: System.Web.Services.dll => 0x5b7805f9751a1b5e => 105
	i64 6659513131007730089, ; 81: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 48
	i64 6876862101832370452, ; 82: System.Xml.Linq => 0x5f6f85a57d108914 => 106
	i64 6894844156784520562, ; 83: System.Numerics.Vectors => 0x5faf683aead1ad72 => 12
	i64 6975328107116786489, ; 84: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 72
	i64 7103753931438454322, ; 85: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 47
	i64 7141577505875122296, ; 86: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 1
	i64 7309048474268083571, ; 87: Xamarin.AndroidX.ConstraintLayout.Solver.dll => 0x656ef4dcc2dc2573 => 38
	i64 7488575175965059935, ; 88: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 106
	i64 7602111570124318452, ; 89: System.Reactive => 0x698020320025a6f4 => 13
	i64 7654504624184590948, ; 90: System.Net.Http => 0x6a3a4366801b8264 => 10
	i64 7723953191431997310, ; 91: Xamarin.AndroidX.ConstraintLayout.Solver => 0x6b30fe811d0c877e => 38
	i64 7735352534559001595, ; 92: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 88
	i64 7820441508502274321, ; 93: System.Data => 0x6c87ca1e14ff8111 => 96
	i64 7836164640616011524, ; 94: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 29
	i64 7933241570243580174, ; 95: Xamarin.AndroidX.PercentLayout.dll => 0x6e18892d0fbb110e => 58
	i64 8044118961405839122, ; 96: System.ComponentModel.Composition => 0x6fa2739369944712 => 102
	i64 8083354569033831015, ; 97: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 50
	i64 8101777744205214367, ; 98: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 19
	i64 8103644804370223335, ; 99: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 98
	i64 8167236081217502503, ; 100: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 3
	i64 8187640529827139739, ; 101: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 91
	i64 8385935383968044654, ; 102: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 18
	i64 8454172198423458237, ; 103: Xamarin.AndroidX.Wear.dll => 0x755340d2850371bd => 71
	i64 8626175481042262068, ; 104: Java.Interop => 0x77b654e585b55834 => 3
	i64 8684531736582871431, ; 105: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 101
	i64 8702320156596882678, ; 106: Firebase.dll => 0x78c4da1357adccf6 => 2
	i64 8853378295825400934, ; 107: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 87
	i64 8951477988056063522, ; 108: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 60
	i64 9031035476476434958, ; 109: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 92
	i64 9057635389615298436, ; 110: LiteDB => 0x7db32f65bf06d784 => 4
	i64 9296667808972889535, ; 111: LiteDB.dll => 0x8104661dcca35dbf => 4
	i64 9324707631942237306, ; 112: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 30
	i64 9662334977499516867, ; 113: System.Numerics.dll => 0x8617827802b0cfc3 => 11
	i64 9678050649315576968, ; 114: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 39
	i64 9808709177481450983, ; 115: Mono.Android.dll => 0x881f890734e555e7 => 5
	i64 9825649861376906464, ; 116: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 36
	i64 9834056768316610435, ; 117: System.Transactions.dll => 0x8879968718899783 => 97
	i64 9866412715007501892, ; 118: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 17
	i64 9875200773399460291, ; 119: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 82
	i64 9880217525690912228, ; 120: Xamarin.Firebase.Database.dll => 0x891d957df2654de4 => 79
	i64 9998632235833408227, ; 121: Mono.Security => 0x8ac2470b209ebae3 => 107
	i64 10038780035334861115, ; 122: System.Net.Http.dll => 0x8b50e941206af13b => 10
	i64 10144742755892837524, ; 123: Firebase => 0x8cc95dc98eb5bc94 => 2
	i64 10226222362177979215, ; 124: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 89
	i64 10229024438826829339, ; 125: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 43
	i64 10321854143672141184, ; 126: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 86
	i64 10376576884623852283, ; 127: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 66
	i64 10406448008575299332, ; 128: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 93
	i64 10430153318873392755, ; 129: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 41
	i64 10798320213170575484, ; 130: Xamarin.Firebase.Database => 0x95db57059cf3d87c => 79
	i64 10847732767863316357, ; 131: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 31
	i64 10850923258212604222, ; 132: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 18
	i64 11019817191295005410, ; 133: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 28
	i64 11023048688141570732, ; 134: System.Core => 0x98f9bc61168392ac => 8
	i64 11037814507248023548, ; 135: System.Xml => 0x992e31d0412bf7fc => 15
	i64 11071824625609515081, ; 136: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 80
	i64 11162124722117608902, ; 137: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 70
	i64 11299661109949763898, ; 138: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 35
	i64 11340910727871153756, ; 139: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 42
	i64 11376351552967644903, ; 140: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 72
	i64 11376461258732682436, ; 141: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 20
	i64 11392833485892708388, ; 142: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 59
	i64 11529969570048099689, ; 143: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 70
	i64 11580057168383206117, ; 144: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 26
	i64 11591352189662810718, ; 145: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 64
	i64 11597940890313164233, ; 146: netstandard => 0xa0f429ca8d1805c9 => 95
	i64 11672361001936329215, ; 147: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 47
	i64 11969746034337772399, ; 148: Xamarin.Android.Wear.dll => 0xa61d14998c57f36f => 24
	i64 12137774235383566651, ; 149: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 68
	i64 12346958216201575315, ; 150: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 85
	i64 12372618141308102262, ; 151: HealthMonitoring.dll => 0xabb45ea586392676 => 0
	i64 12414299427252656003, ; 152: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 20
	i64 12451044538927396471, ; 153: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 46
	i64 12466513435562512481, ; 154: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 55
	i64 12487638416075308985, ; 155: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 44
	i64 12550732019250633519, ; 156: System.IO.Compression => 0xae2d28465e8e1b2f => 100
	i64 12700543734426720211, ; 157: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 34
	i64 12828192437253469131, ; 158: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 90
	i64 12963446364377008305, ; 159: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 99
	i64 13370592475155966277, ; 160: System.Runtime.Serialization => 0xb98de304062ea945 => 103
	i64 13401370062847626945, ; 161: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 68
	i64 13454009404024712428, ; 162: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 81
	i64 13462969177770697403, ; 163: HealthMonitoring => 0xbad61323270e22bb => 0
	i64 13465488254036897740, ; 164: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 88
	i64 13491513212026656886, ; 165: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 32
	i64 13572454107664307259, ; 166: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 61
	i64 13647894001087880694, ; 167: System.Data.dll => 0xbd670f48cb071df6 => 96
	i64 13807020823704499900, ; 168: Xamarin.Firebase.Common.Ktx.dll => 0xbf9c64495353f6bc => 76
	i64 13828521679616088467, ; 169: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 87
	i64 13959074834287824816, ; 170: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 46
	i64 14172845254133543601, ; 171: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 57
	i64 14261073672896646636, ; 172: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 59
	i64 14382082037123372364, ; 173: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 74
	i64 14400856865250966808, ; 174: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 21
	i64 14524915121004231475, ; 175: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 85
	i64 14644440854989303794, ; 176: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 56
	i64 14789919016435397935, ; 177: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 75
	i64 14792063746108907174, ; 178: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 81
	i64 14852515768018889994, ; 179: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 42
	i64 14987728460634540364, ; 180: System.IO.Compression.dll => 0xcfff1ba06622494c => 100
	i64 14988210264188246988, ; 181: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 44
	i64 15099396616243600100, ; 182: Xamarin.KotlinX.Coroutines.Play.Services => 0xd18bd538f1ef5ae4 => 94
	i64 15150743910298169673, ; 183: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 60
	i64 15188640517174936311, ; 184: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 16
	i64 15246441518555807158, ; 185: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 16
	i64 15279429628684179188, ; 186: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 91
	i64 15370334346939861994, ; 187: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 41
	i64 15582737692548360875, ; 188: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 54
	i64 15609085926864131306, ; 189: System.dll => 0xd89e9cf3334914ea => 9
	i64 15777549416145007739, ; 190: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 63
	i64 15930129725311349754, ; 191: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 84
	i64 16154507427712707110, ; 192: System => 0xe03056ea4e39aa26 => 9
	i64 16423015068819898779, ; 193: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 90
	i64 16565028646146589191, ; 194: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 102
	i64 16621146507174665210, ; 195: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 37
	i64 16822611501064131242, ; 196: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 98
	i64 16833383113903931215, ; 197: mscorlib => 0xe99c30c1484d7f4f => 6
	i64 16866861824412579935, ; 198: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 1
	i64 16946943398926902275, ; 199: Xamarin.Android.Support.Percent => 0xeb2fa33b89b06403 => 22
	i64 17024911836938395553, ; 200: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 27
	i64 17037200463775726619, ; 201: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 49
	i64 17130801856631752935, ; 202: Xamarin.Android.Wear => 0xedbcd586962348e7 => 24
	i64 17428701562824544279, ; 203: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 21
	i64 17544493274320527064, ; 204: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 33
	i64 17605100189928655442, ; 205: Xamarin.Firebase.AppCheck.Interop => 0xf451e158cfdc0a52 => 73
	i64 17704177640604968747, ; 206: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 55
	i64 17710060891934109755, ; 207: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 53
	i64 17760961058993581169, ; 208: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 17
	i64 17891337867145587222, ; 209: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 86
	i64 17928294245072900555, ; 210: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 101
	i64 17986907704309214542, ; 211: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 83
	i64 18090425465832348288, ; 212: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 23
	i64 18116111925905154859, ; 213: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 32
	i64 18129453464017766560, ; 214: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 104
	i64 18380184030268848184 ; 215: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 69
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [216 x i32] [
	i32 5, i32 34, i32 62, i32 35, i32 63, i32 40, i32 13, i32 52, ; 0..7
	i32 82, i32 99, i32 48, i32 45, i32 97, i32 107, i32 31, i32 78, ; 8..15
	i32 74, i32 103, i32 77, i32 29, i32 54, i32 49, i32 7, i32 30, ; 16..23
	i32 62, i32 23, i32 26, i32 53, i32 89, i32 7, i32 57, i32 92, ; 24..31
	i32 45, i32 105, i32 51, i32 39, i32 67, i32 14, i32 25, i32 15, ; 32..39
	i32 6, i32 64, i32 78, i32 50, i32 27, i32 12, i32 93, i32 75, ; 40..47
	i32 83, i32 66, i32 65, i32 11, i32 14, i32 95, i32 61, i32 94, ; 48..55
	i32 40, i32 84, i32 104, i32 71, i32 69, i32 77, i32 33, i32 25, ; 56..63
	i32 65, i32 56, i32 67, i32 37, i32 58, i32 8, i32 28, i32 36, ; 64..71
	i32 19, i32 22, i32 76, i32 73, i32 52, i32 51, i32 43, i32 80, ; 72..79
	i32 105, i32 48, i32 106, i32 12, i32 72, i32 47, i32 1, i32 38, ; 80..87
	i32 106, i32 13, i32 10, i32 38, i32 88, i32 96, i32 29, i32 58, ; 88..95
	i32 102, i32 50, i32 19, i32 98, i32 3, i32 91, i32 18, i32 71, ; 96..103
	i32 3, i32 101, i32 2, i32 87, i32 60, i32 92, i32 4, i32 4, ; 104..111
	i32 30, i32 11, i32 39, i32 5, i32 36, i32 97, i32 17, i32 82, ; 112..119
	i32 79, i32 107, i32 10, i32 2, i32 89, i32 43, i32 86, i32 66, ; 120..127
	i32 93, i32 41, i32 79, i32 31, i32 18, i32 28, i32 8, i32 15, ; 128..135
	i32 80, i32 70, i32 35, i32 42, i32 72, i32 20, i32 59, i32 70, ; 136..143
	i32 26, i32 64, i32 95, i32 47, i32 24, i32 68, i32 85, i32 0, ; 144..151
	i32 20, i32 46, i32 55, i32 44, i32 100, i32 34, i32 90, i32 99, ; 152..159
	i32 103, i32 68, i32 81, i32 0, i32 88, i32 32, i32 61, i32 96, ; 160..167
	i32 76, i32 87, i32 46, i32 57, i32 59, i32 74, i32 21, i32 85, ; 168..175
	i32 56, i32 75, i32 81, i32 42, i32 100, i32 44, i32 94, i32 60, ; 176..183
	i32 16, i32 16, i32 91, i32 41, i32 54, i32 9, i32 63, i32 84, ; 184..191
	i32 9, i32 90, i32 102, i32 37, i32 98, i32 6, i32 1, i32 22, ; 192..199
	i32 27, i32 49, i32 24, i32 21, i32 33, i32 73, i32 55, i32 53, ; 200..207
	i32 17, i32 86, i32 101, i32 83, i32 23, i32 32, i32 104, i32 69 ; 216..215
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
