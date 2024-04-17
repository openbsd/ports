USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes
ONLY_FOR_ARCHS =	aarch64 amd64

COMMENT-main =		Nintendo GameCube and Wii emulator with GUI
COMMENT-nogui =		Nintendo GameCube and Wii emulator

PKGNAME =		dolphin-5.0.0.20230924
DIST_TUPLE +=		github dolphin-emu dolphin \
			1a9d946a3337317d288b94b093f1e385e6989335 . # GPLv2

# Externals/
DIST_TUPLE +=		github dolphin-emu ext-win-qt \
			495517af2b922c10c24f543e0fd6ea3ddf774e50 \
			Externals/Qt				# GPLv2
DIST_TUPLE +=		github mgba-emu mgba \
			008a6f3f237bb7cb86b43386cc5c160e97053704 \
			Externals/mGBA/mgba			# MPL
DIST_TUPLE +=		github dolphin-emu ext-win-ffmpeg \
			9bc087fbca36ce5a85eb4fd73f0c73813593e5a2 \
			Externals/FFmpeg-bin			# LGPLv2+
DIST_TUPLE +=		github libusb libusb \
			43107c84e4a5f6b15c296eff8cc3578100f35dce \
			Externals/libusb/libusb			# LGPLv2+
DIST_TUPLE +=		github KhronosGroup SPIRV-Cross \
			06407561ece7d7e78544112189f3eee13adf9959 \
			Externals/spirv_cross/SPIRV-Cross	# Apache 2.0
DIST_TUPLE +=		github libsdl-org SDL \
			1fa6142903b88007c7b77d324ee78fad9966871a \
			Externals/SDL/SDL			# Zlib
DIST_TUPLE +=		github zlib-ng zlib-ng \
			8026095224080a8c426d1b720d30a2851d13ea72 \
			Externals/zlib-ng/zlib-ng		# Zlib
DIST_TUPLE +=		github randy408 libspng \
			adc94393dbeddf9e027d1b2dfff7c1bab975224e \
			Externals/libspng/libspng		# BSD
DIST_TUPLE +=		github GPUOpen-LibrariesAndSDKs VulkanMemoryAllocator \
			5677097bafb8477097c6e3354ce68b7a44fd01a4 \
			Externals/VulkanMemoryAllocator		# MIT
DIST_TUPLE +=		github mozilla cubeb \
			67db4cbc18581c8a6d8ea935af9854ed9729e7a7 \
			Externals/cubeb/cubeb			# ISC
# slightly older implot to build with older Dolphin 
DIST_TUPLE +=		github epezent implot \
			85573fe04ad27f912074a2e7cde889fdf912b0c6 \
			Externals/implot/implot			# MIT
DIST_TUPLE +=		github google googletest \
			61db1e1740a828d9df94fd167a9eb4137cd6def2 \
			Externals/gtest				# BSD
# slightly older rcheevos to build with older Dolphin
DIST_TUPLE +=		github RetroAchievements rcheevos \
			0cdc7f8e9592e0741c07729a34d49a55e6c5e290 \
			Externals/rcheevos/rcheevos		# MIT
DIST_TUPLE +=		github bylaws libadrenotools \
			deec5f75ee1a8ccbe32c8780b1d17284fc87b0f1 \
			Externals/libadrenotools		# BSD 

CATEGORIES =		emulators

MULTI_PACKAGES =	-main -nogui

# GPLv2+
PERMIT_PACKAGE =	Yes

cWANTLIB =		EGL GL GLU ICE SDL2 SM X11 Xext Xi Xrandr avcodec \
			avformat avutil bz2 c curl fmt hidapi-libusb iconv \
			lzma lzo2 m mbedcrypto mbedtls mbedx509 miniupnpc \
			minizip pthread pugixml sfml-network sfml-system \
			speexdsp spng swscale swresample usb-1.0 zstd \
			${COMPILER_LIBCXX}
# # sndio library is dlopen'd
cWANTLIB +=		sndio

WANTLIB-main =		${cWANTLIB} Qt6Core Qt6Gui Qt6Widgets
WANTLIB-nogui =		${cWANTLIB}

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gettext,-tools \
			x11/qt6/qtsvg
LIB_DEPENDS-nogui =	archivers/lzo2 \
			archivers/minizip \
			archivers/zstd \
			comms/libhidapi \
			converters/libiconv \
			devel/fmt>=10.2.1 \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/libspng \
			multimedia/sfml \
			net/curl \
			net/miniupnp/miniupnpc \
			security/polarssl \
			textproc/pugixml
LIB_DEPENDS-main =	${LIB_DEPENDS-nogui} \
			x11/qt6/qtbase
RUN_DEPENDS-main =	${RUN_DEPENDS-nogui} \
			devel/desktop-file-utils \
			emulators/dolphin,-nogui \
			x11/gtk+4,-guic

COMPILER =		base-clang

CONFIGURE_ARGS +=	-DENABLE_ALSA=OFF \
			-DENABLE_PULSEAUDIO=OFF \
			-DENABLE_LLVM=OFF \
			-DENABLE_LTO=ON \
			-DENABLE_TESTS=OFF \
			-DENABLE_VULKAN=OFF \
			-DUSE_DISCORD_PRESENCE=OFF \
			-DUSE_SANITIZERS=OFF \
			-DUSE_SYSTEM_ENET=OFF \
			-DUSE_SYSTEM_LIBMGBA=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

FIX_CRLF_FILES =	Externals/soundtouch/SoundTouch.cpp \
			Externals/soundtouch/SoundTouch.h

post-configure:
	@mv ${WRKSRC}/Externals/soundtouch/SoundTouch.h \
		${WRKSRC}/Externals/soundtouch/ExtSoundTouch.h

.include <bsd.port.mk>
