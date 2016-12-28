# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

# Many parts are copied from www/chromium port, so keep in sync

ONLY_FOR_ARCHS =	i386 amd64
QT5NAME =		QtWebEngine
COMMENT-main =		Chromium-based web engine for Qt5
CATEGORIES =		www
USE_WXNEEDED =		Yes

SHARED_LIBS =		Qt5WebEngine		0.0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB-main =		${WANTLIB}

# BSD-like
PERMIT_PACKAGE_CDROM=   patents
PERMIT_PACKAGE_FTP =    Yes

MODULES =		lang/python gcc4
MODULES =		lang/clang lang/python gcc4
#MODGCC4_ARCHS =
#MODGCC4_LANGS =
#MODQT5_USE_GCC4_MODULE =No
#MODCLANG_ARCHS =	*
#MODCLANG_LANGS =	c++
MODPY_RUNDEP =		No

BUILD_DEPENDS =		\
			devel/re2c \
			sysutils/pciutils \

RUN_DEPENDS =		sysutils/pciutils

LIB_DEPENDS =		\
			audio/pulseaudio \
			archivers/snappy \
			graphics/libwebp \
			graphics/png \
			multimedia/libvpx \
			security/libsrtp \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebchannel>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

PATCHORIG =		.orig.port

MODQMAKE_ARGS =		\
			WEBENGINE_CONFIG+=use_proprietary_codecs
#			WEBENGINE_CONFIG+=use_system_minizip

# SEPARATE_BUILD =	No

GYP_DEFS =	-Duse_system_bzip2=1 \
		-Duse_system_libevent=1 \
		-Duse_system_libjpeg=0 \
		-Duse_system_libpng=1 \
		-Duse_system_libusb=0 \
		-Duse_system_libvpx=0 \
		-Duse_system_libxml=1 \
		-Duse_system_sqlite=0 \
		-Duse_system_yasm=1 \
		-Duse_system_zlib=0 \
		-Duse_system_ssl=0 \
		-Duse_system_icu=0 \
		-Ddisable_nacl=1 \
		-Dlinux_breakpad=0 \
		-Duse_allocator=none \
		-Dlinux_strip_binary=0 \
		-Dlinux_use_heapchecker=0 \
		-Denable_webrtc=1 \
		-Denable_one_click_signin=1 \
		-Duse_kerberos=0 \
		-Duse_sndio=1 \
		-Duse_aura=1 \
		-Dclang_use_chrome_plugins=0 \
		-Dwerror= \
		-Dno_gc_sections=1 \
		-Ddisable_fatal_linker_warnings=1 \
		-Dv8_use_external_startup_data=0 \
		-Dlibraries_for_target='-lestdc++' \
		-DOS=openbsd

#		-Dclang=1 \

# Note: these keys are for OpenBSD use ONLY. For your own distribution,
# please get your own set of keys. It's free!
GYP_DEFS +=	-Dgoogle_api_key='AIzaSyA015yecfJyWi8UQpneQVrNzIKlxjv4MhI' \
		-Dgoogle_default_client_id='451220141585.apps.googleusercontent.com' \
		-Dgoogle_default_client_secret='nQcDyaBvDyCeDrsRqKIWSHJn' \
		-Dffmpeg_branding=Chrome \
		-Dproprietary_codecs=1

.for d in ${GYP_DEFS}
MODQMAKE_ARGS +=GYP_CONFIG+=$d
.endfor

post-extract:
	cd ${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome; \
	cp -pR linux openbsd
.for f t in linux openbsd desktop_linux desktop_openbsd
	cp ${WRKSRC}/src/core/config/$f.pri ${WRKSRC}/src/core/config/$t.pri
.endfor

CHROMESRC =	${WRKSRC}/src/3rdparty/chromium

post-patch:
	perl -pi.linux \
		-e 's,(OS\s*==\s*"linux"),($$1 or  os_bsd == 1),g;' \
		-e 's,(OS\s*!=\s*"linux"),($$1 and os_bsd != 1),g;' \
		${WRKSRC}/src/3rdparty/chromium/third_party/ffmpeg/ffmpeg_generated.gypi

pre-configure:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	cp ${FILESDIR}/sandbox_init_openbsd.{cc,h} ${CHROMESRC}/content/common/
	mkdir -p ${CHROMESRC}/media/audio/sndio ${CHROMESRC}/media/audio/openbsd
	cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${CHROMESRC}/media/audio/sndio
	cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${CHROMESRC}/media/audio/openbsd

.include <bsd.port.mk>
