COMMENT-main =		low-latency voice chat client
COMMENT-server =	low-latency voice chat server

VERSION =		1.4.230
DISTNAME =		mumble-${VERSION}
PKGNAME-server =	murmur-${VERSION}
REVISION-main =		1
REVISION-server =	1

CATEGORIES =		audio net

HOMEPAGE =		https://www.mumble.info/

MASTER_SITES =		https://github.com/mumble-voip/mumble/releases/download/v${VERSION}/

MASTER_SITES0 =		https://github.com/mumble-voip/mumble/commit/
# all merged into master but not released yet
PATCHFILES =		mumble-kvm_getprocs-ALL_arg-{}42ad5ed.patch:0 \
			mumble-kvm_getprocs-pass-elemsize-{}ccbacbf.patch:0 \
			mumble-struct_procinfo-member_prefix-{}a707213.patch:0 \
			mumble-audiowizard-fix_Werror-{}0c769d8.patch:0 \
			mumble-use-system-rnnoise-{}d45318d.patch:0 \
			mumble-enable-xinput2-{}904bae1.patch:0
PATCH_DIST_STRIP =	-p1

# BSD3
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB-main += ${COMPILER_LIBCXX} PocoFoundation PocoUtil PocoXML
WANTLIB-main += PocoZip Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB-main += Qt5Sql Qt5Svg Qt5Widgets Qt5Xml X11 Xext Xi c crypto kvm
WANTLIB-main += m protobuf rnnoise sndfile speex speexdsp ssl

# dlopen()'ed
WANTLIB-main += opus portaudio

WANTLIB-server += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network Qt5Sql
WANTLIB-server += Qt5Xml c crypto m protobuf ssl

WRKDIST =		${WRKDIR}/${DISTNAME}.src

MULTI_PACKAGES =	-main -server

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		devel/cmake \
			lang/python \
			x11/qt5

BUILD_DEPENDS =		devel/boost

LIB_DEPENDS-main =	audio/libsndfile>=1.0.25p0 \
			audio/opus \
			audio/portaudio-svn \
			audio/rnnoise \
			audio/speex \
			devel/protobuf \
			net/poco \
			x11/qt5/qtsvg
LIB_DEPENDS-server =	devel/protobuf \
			x11/qt5/qtbase
TEST_DEPENDS =		x11/qt5/qtbase

RUN_DEPENDS-main =	devel/desktop-file-utils \
			x11/gtk+3,-guic

# silence noisy cmake messages during configure
CONFIGURE_ARGS +=	-Wno-dev

# ${WRKSRC}/docs/dev/build-instructions/cmake_options.md
CONFIGURE_ARGS +=	-Dbundled-opus=OFF \
			-Dbundled-rnnoise=OFF \
			-Dbundled-speex=OFF \
			-Dice=OFF \
			-Djackaudio=OFF \
			-Doverlay=OFF \
			-Dupdate=OFF \
			-Dzeroconf=OFF

.ifdef DEBUG
CONFIGURE_ARGS +=	-Dplugin-debug=ON \
			-Dplugin-callback-debug=ON \
			-Dsymbols=ON
.endif

CONFIGURE_ARGS +=	-Dtests=ON

SERVER_CONFIG_FILE =	${WRKSRC}/scripts/murmur.ini
SERVER_EXAMPLES_DIR =	${PREFIX}/share/examples/murmur

post-install:
	${INSTALL_DATA_DIR} ${SERVER_EXAMPLES_DIR}
	${INSTALL_DATA} ${SERVER_CONFIG_FILE} ${SERVER_EXAMPLES_DIR}/
	# "[DRAFT] Rename "murmur" to "mumble-server" across the project"
	# https://github.com/mumble-voip/mumble/pull/4695
	ln -f ${PREFIX}/bin/{mumble-server,murmurd}

.include <bsd.port.mk>
