COMMENT =		extensible drawing editor

V =			7.2.30
GH_ACCOUNT=		otfried
GH_PROJECT=		ipe
GH_TAGNAME=		v$V

SUBST_VARS +=		V

# Upstream libraries would be installed as libxxx.so.${V}
SHLIB_VERSION =	4.0

SHARED_LIBS +=		ipe		${SHLIB_VERSION}
SHARED_LIBS +=		ipecairo	${SHLIB_VERSION}
SHARED_LIBS +=		ipecanvas	${SHLIB_VERSION}
SHARED_LIBS +=		ipelua		${SHLIB_VERSION}
SHARED_LIBS +=		ipeui		${SHLIB_VERSION}

CATEGORIES =		graphics math
HOMEPAGE =		https://ipe.otfried.org/
MAINTAINER =		Alessandro De Laurenzis <just22@atlantide.mooo.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} Qt6Core Qt6Gui
WANTLIB += Qt6Widgets c cairo freetype gsl gslcblas iconv jpeg
WANTLIB += m png spiro z

FIX_CRLF_FILES =	src/ipeui/Makefile

# C++20
COMPILER =		base-clang ports-gcc

MODULES =		lang/lua \
			x11/qt6

MODLUA_VERSION =	5.4
MODLUA_SA =		Yes

LIB_DEPENDS =		${MODLUA_LIB_DEPENDS} \
			devel/gsl \
			graphics/libspiro

RUN_DEPENDS =		print/texlive/base \
			x11/xvkbd

MAKE_FLAGS +=		CXX="${CXX}" \
			IPEPREFIX=${PREFIX} \
			ICONV_LIBS="-L${LOCALBASE}/lib -liconv" \
			SHLIB_VERSION=${SHLIB_VERSION} \
			DL_LIBS=""

MAKE_ENV +=		PKG_CONFIG_PATH=${LOCALBASE}/lib/qt6/pkgconfig

FAKE_FLAGS +=		INSTALL_ROOT=${WRKINST} \
			IPEMANDIR=${PREFIX}/man/man1

USE_GMAKE =		Yes

NO_TEST =		Yes

UPDATE_PLIST_ARGS +=	-i MODLUA_DEP_VERSION

WRKSRC	=		${WRKDIST}/src

ALL_TARGET =		all

pre-build:
	${SUBST_CMD} ${WRKSRC}/config.mak

.include <bsd.port.mk>
