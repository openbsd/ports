USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes
ONLY_FOR_ARCHS =	aarch64 amd64

COMMENT-main =		Nintendo GameCube and Wii emulator with GUI
COMMENT-nogui =		Nintendo GameCube and Wii emulator

PKGNAME =		dolphin-5.0.0.20240421
DIST_TUPLE +=		github dolphin-emu dolphin \
			b6f0e8876e40a41941f0fb6cef89cf49c91edb56 . # GPLv2

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
DIST_TUPLE +=		github epezent implot \
			f156599faefe316f7dd20fe6c783bf87c8bb6fd9 \
			Externals/implot/implot			# MIT
DIST_TUPLE +=		github google googletest \
			61db1e1740a828d9df94fd167a9eb4137cd6def2 \
			Externals/gtest				# BSD
DIST_TUPLE +=		github RetroAchievements rcheevos \
			bfa0d3138865ae2a649a0beadfa4206408a14690 \
			Externals/rcheevos/rcheevos		# MIT
DIST_TUPLE +=		github bylaws libadrenotools \
			deec5f75ee1a8ccbe32c8780b1d17284fc87b0f1 \
			Externals/libadrenotools		# BSD
DIST_TUPLE +=		github curl curl \
			5379dbc248045ba46e89d76ffc4be4380d854728 \
			Externals/curl/curl			# MIT
DIST_TUPLE +=		github fmtlib fmt \
			ee0c3351a4d47ca89090b8a7458846288b18efca \
			Externals/fmt/fmt			# MIT
DIST_TUPLE +=		github lz4 lz4 \
			1a5b83b8c479d49fc333fc4eb7b01023e8e49a11 \
			Externals/lz4/lz4			# BSD
DIST_TUPLE +=		github Cyan4973 xxHash \
			4b5573cbc73a1a5e8fb1eee2e1b8f2020b2e908c \
			Externals/xxhash/xxHash			# BSD
DIST_TUPLE +=		github lsalzman enet \
			276ff5ae05a245bcee195af9c9fd002851517d40 \
			Externals/enet/enet			# MIT
DIST_TUPLE +=		github libusb hidapi \
			c2ffb03ef6f4cfc5de005adb6d37aa45cbd7d68b \
			Externals/hidapi/hidapi-src		# BSD
DIST_TUPLE +=		github syoyo tinygltf \
			e3f9a7d8b33a78bbe4606a934c6a9be5e402fab0 \
			Externals/tinygltf/tinygltf		# MIT

CATEGORIES =		emulators

MULTI_PACKAGES =	-main -nogui

# GPLv2+
PERMIT_PACKAGE =	Yes

cWANTLIB =		EGL GL GLU ICE SDL2 SM X11 Xext Xi Xrandr avcodec \
			avformat avutil bz2 c curl fmt hidapi-libusb iconv \
			lz4 lzma lzo2 m mbedcrypto mbedtls mbedx509 miniupnpc \
			minizip pthread pugixml sfml-network sfml-system \
			speexdsp spng swscale swresample usb-1.0 xxhash \
			zstd ${COMPILER_LIBCXX}
# sndio library is dlopen'd
cWANTLIB +=		sndio

WANTLIB-main =		${cWANTLIB} Qt6Core Qt6Gui Qt6Widgets
WANTLIB-nogui =		${cWANTLIB}

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gettext,-tools \
			x11/qt6/qtsvg
LIB_DEPENDS-nogui =	archivers/lz4 \
			archivers/lzo2 \
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
			sysutils/xxhash \
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
