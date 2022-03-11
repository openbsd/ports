COMMENT =		extensible drawing editor

V =			7.2.24
SUBST_VARS +=		V
DISTNAME =		ipe-${V}-src
PKGNAME =		ipe-${V}

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

WANTLIB +=		${COMPILER_LIBCXX} ${MODLUA_WANTLIB} Qt5Core Qt5Gui Qt5Widgets
WANTLIB +=		c cairo freetype gsl gslcblas iconv jpeg m png pthread spiro z

FIX_CRLF_FILES =	src/ipeui/Makefile

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/otfried/ipe/releases/download/v$V/

MODULES =		lang/lua \
			x11/qt5

MODLUA_VERSION =	5.3
MODLUA_SA =		Yes

BUILD_DEPENDS =		devel/doxygen

LIB_DEPENDS =		${MODLUA_LIB_DEPENDS} \
			${MODQT5_LIB_DEPENDS} \
			devel/gsl \
			graphics/libspiro

RUN_DEPENDS =		print/texlive/base \
			x11/xvkbd

MAKE_FLAGS +=		CXX="${CXX}" \
			IPEPREFIX=${PREFIX} \
			ICONV_LIBS="-L${LOCALBASE}/lib -liconv" \
			SHLIB_VERSION=${SHLIB_VERSION} \
			IPEDOCDIR=${PREFIX}/share/doc/ipe \
			DL_LIBS=""

MAKE_ENV +=		PKG_CONFIG_PATH=${LOCALBASE}/lib/qt5/pkgconfig

FAKE_FLAGS +=		INSTALL_ROOT=${WRKINST} \
			SHLIB_VERSION=${SHLIB_VERSION} \
			IPEMANDIR=${PREFIX}/man/man1 \
			IPEDOCDIR=${PREFIX}/share/doc/ipe

USE_GMAKE =		Yes

NO_TEST =		Yes

UPDATE_PLIST_ARGS +=	-i MODLUA_DEP_VERSION

WRKDIST	=		${WRKDIR}/${PKGNAME}
WRKSRC	=		${WRKDIST}/src

ALL_TARGET =		all documentation

pre-build:
	${SUBST_CMD} ${WRKSRC}/config.mak

.include <bsd.port.mk>
