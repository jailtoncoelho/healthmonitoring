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
@assembly_image_cache_hashes = local_unnamed_addr constant [182 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 43
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 5
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 31
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 60
	i64 233177144301842968, ; 4: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 32
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 61
	i64 316157742385208084, ; 6: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 35
	i64 464346026994987652, ; 7: System.Reactive.dll => 0x671b04057e67284 => 12
	i64 634308326490598313, ; 8: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 50
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 81
	i64 720058930071658100, ; 10: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 46
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 42
	i64 940822596282819491, ; 12: System.Transactions => 0xd0e792aa81923a3 => 79
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 90
	i64 1315114680217950157, ; 14: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 28
	i64 1425944114962822056, ; 15: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 86
	i64 1576750169145655260, ; 16: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 70
	i64 1628611045998245443, ; 17: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 52
	i64 1636321030536304333, ; 18: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 47
	i64 1731380447121279447, ; 19: Newtonsoft.Json => 0x18071957e9b889d7 => 7
	i64 1836611346387731153, ; 20: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 60
	i64 1860886102525309849, ; 21: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 22
	i64 1875917498431009007, ; 22: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 25
	i64 1981742497975770890, ; 23: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 51
	i64 2133195048986300728, ; 24: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 7
	i64 2136356949452311481, ; 25: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 55
	i64 2203565783020068373, ; 26: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 75
	i64 2262844636196693701, ; 27: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 42
	i64 2284400282711631002, ; 28: System.Web.Services => 0x1fb3d1f42fd4249a => 88
	i64 2329709569556905518, ; 29: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 49
	i64 2470498323731680442, ; 30: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 34
	i64 2497223385847772520, ; 31: System.Runtime => 0x22a7eb7046413568 => 13
	i64 2516498815742412887, ; 32: Xamarin.AndroidX.Core.SplashScreen.dll => 0x22ec665706048857 => 37
	i64 2547086958574651984, ; 33: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 24
	i64 2592350477072141967, ; 34: System.Xml.dll => 0x23f9e10627330e8f => 14
	i64 2624866290265602282, ; 35: mscorlib.dll => 0x246d65fbde2db8ea => 6
	i64 2787234703088983483, ; 36: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 62
	i64 3289520064315143713, ; 37: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 48
	i64 3303437397778967116, ; 38: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 26
	i64 3311221304742556517, ; 39: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 11
	i64 3344514922410554693, ; 40: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 76
	i64 3493805808809882663, ; 41: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 64
	i64 3522470458906976663, ; 42: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 63
	i64 3531994851595924923, ; 43: System.Numerics => 0x31042a9aade235bb => 10
	i64 3571415421602489686, ; 44: System.Runtime.dll => 0x319037675df7e556 => 13
	i64 3716579019761409177, ; 45: netstandard.dll => 0x3393f0ed5c8c5c99 => 77
	i64 3727469159507183293, ; 46: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 59
	i64 3772598417116884899, ; 47: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 43
	i64 4201423742386704971, ; 48: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 35
	i64 4525561845656915374, ; 49: System.ServiceModel.Internals => 0x3ece06856b710dae => 87
	i64 4635586728991130860, ; 50: Xamarin.AndroidX.Wear => 0x4054e991d30804ec => 68
	i64 4636684751163556186, ; 51: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 66
	i64 4782108999019072045, ; 52: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 30
	i64 4794310189461587505, ; 53: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 24
	i64 4795410492532947900, ; 54: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 63
	i64 5205316157927637098, ; 55: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 54
	i64 5408338804355907810, ; 56: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 65
	i64 5457150482131305259, ; 57: Xamarin.AndroidX.PercentLayout => 0x4bbbb1734549c32b => 56
	i64 5507995362134886206, ; 58: System.Core.dll => 0x4c705499688c873e => 8
	i64 5574231584441077149, ; 59: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 27
	i64 5757522595884336624, ; 60: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 33
	i64 5767696078500135884, ; 61: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 18
	i64 5898204443682172947, ; 62: Xamarin.Android.Support.Percent.dll => 0x51daa1b1064e7013 => 21
	i64 6319713645133255417, ; 63: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 50
	i64 6401687960814735282, ; 64: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 49
	i64 6548213210057960872, ; 65: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 39
	i64 6557084851308642443, ; 66: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 69
	i64 6591024623626361694, ; 67: System.Web.Services.dll => 0x5b7805f9751a1b5e => 88
	i64 6659513131007730089, ; 68: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 46
	i64 6876862101832370452, ; 69: System.Xml.Linq => 0x5f6f85a57d108914 => 89
	i64 6894844156784520562, ; 70: System.Numerics.Vectors => 0x5faf683aead1ad72 => 11
	i64 7103753931438454322, ; 71: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 45
	i64 7141577505875122296, ; 72: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 1
	i64 7488575175965059935, ; 73: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 89
	i64 7602111570124318452, ; 74: System.Reactive => 0x698020320025a6f4 => 12
	i64 7654504624184590948, ; 75: System.Net.Http => 0x6a3a4366801b8264 => 85
	i64 7735352534559001595, ; 76: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 73
	i64 7820441508502274321, ; 77: System.Data => 0x6c87ca1e14ff8111 => 78
	i64 7933241570243580174, ; 78: Xamarin.AndroidX.PercentLayout.dll => 0x6e18892d0fbb110e => 56
	i64 8044118961405839122, ; 79: System.ComponentModel.Composition => 0x6fa2739369944712 => 84
	i64 8083354569033831015, ; 80: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 48
	i64 8101777744205214367, ; 81: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 18
	i64 8103644804370223335, ; 82: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 80
	i64 8167236081217502503, ; 83: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 3
	i64 8187640529827139739, ; 84: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 74
	i64 8385935383968044654, ; 85: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 17
	i64 8454172198423458237, ; 86: Xamarin.AndroidX.Wear.dll => 0x755340d2850371bd => 68
	i64 8601935802264776013, ; 87: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 65
	i64 8626175481042262068, ; 88: Java.Interop => 0x77b654e585b55834 => 3
	i64 8684531736582871431, ; 89: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 83
	i64 8702320156596882678, ; 90: Firebase.dll => 0x78c4da1357adccf6 => 2
	i64 8951477988056063522, ; 91: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 58
	i64 9031035476476434958, ; 92: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 75
	i64 9057635389615298436, ; 93: LiteDB => 0x7db32f65bf06d784 => 4
	i64 9296667808972889535, ; 94: LiteDB.dll => 0x8104661dcca35dbf => 4
	i64 9662334977499516867, ; 95: System.Numerics.dll => 0x8617827802b0cfc3 => 10
	i64 9678050649315576968, ; 96: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 34
	i64 9780093022148426479, ; 97: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 70
	i64 9808709177481450983, ; 98: Mono.Android.dll => 0x881f890734e555e7 => 5
	i64 9825649861376906464, ; 99: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 33
	i64 9834056768316610435, ; 100: System.Transactions.dll => 0x8879968718899783 => 79
	i64 9866412715007501892, ; 101: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 16
	i64 9998632235833408227, ; 102: Mono.Security => 0x8ac2470b209ebae3 => 90
	i64 10038780035334861115, ; 103: System.Net.Http.dll => 0x8b50e941206af13b => 85
	i64 10144742755892837524, ; 104: Firebase => 0x8cc95dc98eb5bc94 => 2
	i64 10229024438826829339, ; 105: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 39
	i64 10321854143672141184, ; 106: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 72
	i64 10376576884623852283, ; 107: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 64
	i64 10406448008575299332, ; 108: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 76
	i64 10430153318873392755, ; 109: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 36
	i64 10847732767863316357, ; 110: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 28
	i64 10850923258212604222, ; 111: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 17
	i64 11019817191295005410, ; 112: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 27
	i64 11023048688141570732, ; 113: System.Core => 0x98f9bc61168392ac => 8
	i64 11037814507248023548, ; 114: System.Xml => 0x992e31d0412bf7fc => 14
	i64 11162124722117608902, ; 115: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 67
	i64 11299661109949763898, ; 116: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 32
	i64 11340910727871153756, ; 117: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 38
	i64 11376461258732682436, ; 118: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 19
	i64 11392833485892708388, ; 119: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 57
	i64 11529969570048099689, ; 120: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 67
	i64 11580057168383206117, ; 121: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 25
	i64 11591352189662810718, ; 122: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 62
	i64 11597940890313164233, ; 123: netstandard => 0xa0f429ca8d1805c9 => 77
	i64 11672361001936329215, ; 124: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 45
	i64 11969746034337772399, ; 125: Xamarin.Android.Wear.dll => 0xa61d14998c57f36f => 23
	i64 12372618141308102262, ; 126: HealthMonitoring.dll => 0xabb45ea586392676 => 0
	i64 12414299427252656003, ; 127: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 19
	i64 12451044538927396471, ; 128: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 44
	i64 12466513435562512481, ; 129: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 53
	i64 12487638416075308985, ; 130: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 41
	i64 12550732019250633519, ; 131: System.IO.Compression => 0xae2d28465e8e1b2f => 82
	i64 12700543734426720211, ; 132: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 31
	i64 12753841065332862057, ; 133: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 69
	i64 12963446364377008305, ; 134: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 81
	i64 12982280885948128408, ; 135: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 40
	i64 13370592475155966277, ; 136: System.Runtime.Serialization => 0xb98de304062ea945 => 86
	i64 13454009404024712428, ; 137: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 71
	i64 13462969177770697403, ; 138: HealthMonitoring => 0xbad61323270e22bb => 0
	i64 13465488254036897740, ; 139: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 73
	i64 13491513212026656886, ; 140: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 29
	i64 13572454107664307259, ; 141: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 59
	i64 13621154251410165619, ; 142: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 40
	i64 13647894001087880694, ; 143: System.Data.dll => 0xbd670f48cb071df6 => 78
	i64 13959074834287824816, ; 144: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 44
	i64 14172845254133543601, ; 145: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 55
	i64 14261073672896646636, ; 146: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 57
	i64 14400856865250966808, ; 147: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 20
	i64 14644440854989303794, ; 148: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 54
	i64 14792063746108907174, ; 149: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 71
	i64 14852515768018889994, ; 150: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 38
	i64 14987728460634540364, ; 151: System.IO.Compression.dll => 0xcfff1ba06622494c => 82
	i64 14988210264188246988, ; 152: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 41
	i64 15150743910298169673, ; 153: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 58
	i64 15188640517174936311, ; 154: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 15
	i64 15246441518555807158, ; 155: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 15
	i64 15279429628684179188, ; 156: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 74
	i64 15370334346939861994, ; 157: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 36
	i64 15582737692548360875, ; 158: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 52
	i64 15609085926864131306, ; 159: System.dll => 0xd89e9cf3334914ea => 9
	i64 15777549416145007739, ; 160: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 61
	i64 16154507427712707110, ; 161: System => 0xe03056ea4e39aa26 => 9
	i64 16565028646146589191, ; 162: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 84
	i64 16822611501064131242, ; 163: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 80
	i64 16833383113903931215, ; 164: mscorlib => 0xe99c30c1484d7f4f => 6
	i64 16866861824412579935, ; 165: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 1
	i64 16946943398926902275, ; 166: Xamarin.Android.Support.Percent => 0xeb2fa33b89b06403 => 21
	i64 17024911836938395553, ; 167: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 26
	i64 17037200463775726619, ; 168: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 47
	i64 17130801856631752935, ; 169: Xamarin.Android.Wear => 0xedbcd586962348e7 => 23
	i64 17428701562824544279, ; 170: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 20
	i64 17509666368860808140, ; 171: Xamarin.AndroidX.Core.SplashScreen => 0xf2fed4cad38d63cc => 37
	i64 17544493274320527064, ; 172: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 30
	i64 17704177640604968747, ; 173: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 53
	i64 17710060891934109755, ; 174: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 51
	i64 17760961058993581169, ; 175: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 16
	i64 17891337867145587222, ; 176: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 72
	i64 17928294245072900555, ; 177: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 83
	i64 18090425465832348288, ; 178: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 22
	i64 18116111925905154859, ; 179: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 29
	i64 18129453464017766560, ; 180: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 87
	i64 18380184030268848184 ; 181: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 66
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [182 x i32] [
	i32 43, i32 5, i32 31, i32 60, i32 32, i32 61, i32 35, i32 12, ; 0..7
	i32 50, i32 81, i32 46, i32 42, i32 79, i32 90, i32 28, i32 86, ; 8..15
	i32 70, i32 52, i32 47, i32 7, i32 60, i32 22, i32 25, i32 51, ; 16..23
	i32 7, i32 55, i32 75, i32 42, i32 88, i32 49, i32 34, i32 13, ; 24..31
	i32 37, i32 24, i32 14, i32 6, i32 62, i32 48, i32 26, i32 11, ; 32..39
	i32 76, i32 64, i32 63, i32 10, i32 13, i32 77, i32 59, i32 43, ; 40..47
	i32 35, i32 87, i32 68, i32 66, i32 30, i32 24, i32 63, i32 54, ; 48..55
	i32 65, i32 56, i32 8, i32 27, i32 33, i32 18, i32 21, i32 50, ; 56..63
	i32 49, i32 39, i32 69, i32 88, i32 46, i32 89, i32 11, i32 45, ; 64..71
	i32 1, i32 89, i32 12, i32 85, i32 73, i32 78, i32 56, i32 84, ; 72..79
	i32 48, i32 18, i32 80, i32 3, i32 74, i32 17, i32 68, i32 65, ; 80..87
	i32 3, i32 83, i32 2, i32 58, i32 75, i32 4, i32 4, i32 10, ; 88..95
	i32 34, i32 70, i32 5, i32 33, i32 79, i32 16, i32 90, i32 85, ; 96..103
	i32 2, i32 39, i32 72, i32 64, i32 76, i32 36, i32 28, i32 17, ; 104..111
	i32 27, i32 8, i32 14, i32 67, i32 32, i32 38, i32 19, i32 57, ; 112..119
	i32 67, i32 25, i32 62, i32 77, i32 45, i32 23, i32 0, i32 19, ; 120..127
	i32 44, i32 53, i32 41, i32 82, i32 31, i32 69, i32 81, i32 40, ; 128..135
	i32 86, i32 71, i32 0, i32 73, i32 29, i32 59, i32 40, i32 78, ; 136..143
	i32 44, i32 55, i32 57, i32 20, i32 54, i32 71, i32 38, i32 82, ; 144..151
	i32 41, i32 58, i32 15, i32 15, i32 74, i32 36, i32 52, i32 9, ; 152..159
	i32 61, i32 9, i32 84, i32 80, i32 6, i32 1, i32 21, i32 26, ; 160..167
	i32 47, i32 23, i32 20, i32 37, i32 30, i32 53, i32 51, i32 16, ; 168..175
	i32 72, i32 83, i32 22, i32 29, i32 87, i32 66 ; 176..181
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
