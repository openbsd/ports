COMMENT-main =		native messaging host for Web eID browser extension
COMMENT-chrome =	Chromium extension
CATEGORIES =		security www

GH_ACCOUNT =		web-eid
GH_PROJECT =		web-eid-app
GH_TAGNAME =		v2.4.0
DISTFILES =		${GH_DISTFILE}
PKGNAME-main =		${PKGNAME:S/app/native/}
PKGNAME-chrome =	${PKGNAME:S/app/chrome/}
REVISION-main =		1
REVISION-chrome =	0

MULTI_PACKAGES =	-main -chrome

# pending/accepted "Upload complete source tarball as release asset"
# https://github.com/web-eid/web-eid-app/pull/279

# submodules of ${GH_PROJECT} at release, see
#	cd path/to/repo
#	git checkout ${commit}
#	git submodule status
EID_REPO =	libelectronic-id
EID_COMMIT =	fb84aa8cf7ae1073f5472b7093d4df2ed95dc718
EID_DIR =	lib/${EID_REPO}
DIST_TUPLE +=	github	${GH_ACCOUNT}	${EID_REPO}	${EID_COMMIT}	${EID_DIR}	# MIT

# submodules of ${EID_REPO} submodule at release
PCSC_REPO =	libpcsc-cpp
PCSC_COMMIT =	6f04aacfc594b486bc4500737ee3877492c95328
PCSC_DIR =	${EID_DIR}/lib/${PCSC_REPO}
DIST_TUPLE +=	github	${GH_ACCOUNT}	${PCSC_REPO}	${PCSC_COMMIT}	${PCSC_DIR}	# MIT

# submodules of ${PCSC_REPO} submodule at release
MOCK_REPO =	libpcsc-mock
MOCK_COMMIT =	488cb42301a42d8ced964a0aaafe4be0d258126d
MOCK_DIR =	${PCSC_DIR}/tests/lib/${MOCK_REPO}
DIST_TUPLE +=	github	${GH_ACCOUNT}	${MOCK_REPO}	${MOCK_COMMIT}	${MOCK_DIR}	# MIT

SITES.pcsc =		https://github.com/${GH_ACCOUNT}/${PCSC_REPO}/commit/
PCSC_FIX_COMMIT =	d51bd26ee80e62965eb32ec56982a868d6074471
# upstream "Fix build with recent compilers"
PATCHFILES.pcsc =	libpcsc-fix-compilers-{}${PCSC_FIX_COMMIT}.patch
PATCH_DIST_STRIP =	-p1

PATCH_CASES =		*-${PCSC_FIX_COMMIT}.patch) \
				${PATCH} ${PATCH_DIST_ARGS} \
				    -d ${WRKSRC}/${PCSC_DIR}/ < $$patchfile;;

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

HOMEPAGE =		https://web-eid.eu/

# -std=gnu++17
COMPILER =		base-clang ports-gcc

# uses pledge() and unveil()
WANTLIB-main += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Svg
WANTLIB-main += Qt6SvgWidgets Qt6Widgets c crypto m pcsclite

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/gtest \
			x11/qt6/qtsvg

LIB_DEPENDS-main =	${MODQT_LIB_DEPENDS} \
			x11/qt6/qtsvg \
			security/pcsc-lite

RUN_DEPENDS-main =	devel/desktop-file-utils \
			x11/gtk+4,-guic

RUN_DEPENDS-chrome =	${FULLPKGPATH-main}
LIB_DEPENDS-chrome =	# empty

# XXX pcsclite is detected with pkg-config, but its -I and -L are ignored
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS=-L/usr/local/lib

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
