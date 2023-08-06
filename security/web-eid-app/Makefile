COMMENT-main =		native messaging host for Web eID browser extension
COMMENT-chrome =	Chromium extension
CATEGORIES =		security www

# open "release tarballs with bundled git submodules"
# https://github.com/web-eid/web-eid-app/issues/274
GH_ACCOUNT =		web-eid
GH_PROJECT =		web-eid-app
GH_TAGNAME =		v2.3.1
DISTFILES =		${GH_DISTFILE}
PKGNAME-main =		${PKGNAME:S/app/native/}
REVISION-main =		1
PKGNAME-chrome =	${PKGNAME:S/app/chrome/}
REVISION-chrome =	0

# TODO: firefox
MULTI_PACKAGES =	-main -chrome

MASTER_SITES0 =		https://github.com/${GH_ACCOUNT}/

# submodules of ${GH_PROJECT} at release, see
#	cd path/to/repo
#	git checkout ${commit}
#	git submodule status
EID_REPO =	libelectronic-id
EID_COMMIT =	5b66d84710998701948364ec47e5dbc4066cd948
EID_DIR =	${WRKSRC}/lib/${EID_REPO}
DISTFILES +=	${EID_REPO}-{${EID_REPO}/archive/}${EID_COMMIT}${EXTRACT_SUFX}:0
EID_SRC =	${WRKDIR}/${EID_REPO}-${EID_COMMIT}

# submodules of ${EID_REPO} submodule at release
PCSC_REPO =	libpcsc-cpp
PCSC_COMMIT =	e7d702b5c981530c96311cbb89d7c6e171d83ca5
PCSC_DIR =	${EID_DIR}/lib/${PCSC_REPO}
DISTFILES +=	${PCSC_REPO}-{${PCSC_REPO}/archive/}${PCSC_COMMIT}${EXTRACT_SUFX}:0
PCSC_SRC =	${WRKDIR}/${PCSC_REPO}-${PCSC_COMMIT}

# submodules of ${PCSC_REPO} submodule at release
MOCK_REPO =	libpcsc-mock
MOCK_COMMIT =	b0c9bc020e67e5881dcabc946edfa2d7692f15c9
MOCK_DIR =	${PCSC_DIR}/tests/lib/${MOCK_REPO}
DISTFILES +=	${MOCK_REPO}-{${MOCK_REPO}/archive/}${MOCK_COMMIT}${EXTRACT_SUFX}:0
MOCK_SRC =	${WRKDIR}/${MOCK_REPO}-${MOCK_COMMIT}

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

HOMEPAGE =		https://web-eid.eu/

# -std=gnu++17
COMPILER =		base-clang ports-gcc

# uses pledge()
WANTLIB-main +=	${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Widgets
WANTLIB-main +=	c crypto m pcsclite

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/gtest \
			x11/qt6/qtsvg \
			x11/qt6/qttools

LIB_DEPENDS-main =	${MODQT_LIB_DEPENDS} \
			security/pcsc-lite

RUN_DEPENDS-main =	devel/desktop-file-utils \
			x11/gtk+4,-guic

RUN_DEPENDS-chrome =	${FULLPKGPATH-main}
LIB_DEPENDS-chrome =	# empty

# XXX pcsclite is detected with pkg-config, but its -I and -L are ignored
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS=-L/usr/local/lib

TEST_IS_INTERACTIVE =	X11

post-extract:
	# replace empty directories with symlinks to prefetched submodules
.for _submod in EID PCSC MOCK
	rmdir ${${_submod}_DIR}/
	mv ${${_submod}_SRC}/ ${${_submod}_DIR}
.endfor

.include <bsd.port.mk>
