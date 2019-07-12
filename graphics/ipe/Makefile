# $OpenBSD: Makefile,v 1.21 2019/07/12 20:47:01 sthen Exp $

COMMENT =		extensible drawing editor

V =			7.2.11
SUBST_VARS +=		V
DISTNAME =		ipe-${V}-src
PKGNAME =		ipe-${V}
REVISION =		0

# Upstream libraries would be installed as libxxx.so.${V}
SHLIB_VERSION =	0.0

SHARED_LIBS +=		ipe		${SHLIB_VERSION}
SHARED_LIBS +=		ipecairo	${SHLIB_VERSION}
SHARED_LIBS +=		ipecanvas	${SHLIB_VERSION}
SHARED_LIBS +=		ipelua		${SHLIB_VERSION}
SHARED_LIBS +=		ipeui		${SHLIB_VERSION}

CATEGORIES =		graphics math
HOMEPAGE =		https://ipe.otfried.org/
MAINTAINER =		Alessandro De Laurenzis <just22@atlantide.t28.net>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} Qt5Core Qt5Gui
WANTLIB += Qt5Widgets c cairo freetype iconv jpeg m png pthread z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://dl.bintray.com/otfried/generic/ipe/${V:R}/

MODULES =		lang/lua \
			x11/qt5

MODLUA_VERSION =	5.3
MODLUA_SA =		Yes

LIB_DEPENDS =		${MODLUA_LIB_DEPENDS} \
			${MODQT5_LIB_DEPENDS}
RUN_DEPENDS =		print/texlive/base \
			x11/xvkbd

MAKE_FLAGS +=		CXX="${CXX}" \
			IPEPREFIX=${PREFIX} \
			IPE_USE_ICONV=-DIPE_USE_ICONV \
			ICONV_CFLAGS=-I${LOCALBASE}/include \
			ICONV_LIBS="-L${LOCALBASE}/lib -liconv" \
			SHLIB_VERSION=${SHLIB_VERSION} \
			JPEG_CFLAGS=-I${LOCALBASE}/include \
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

WRKDIST = ${WRKDIR}/${PKGNAME}
WRKSRC = ${WRKDIST}/src

pre-build:
	${SUBST_CMD} ${WRKSRC}/config.mak

.include <bsd.port.mk>
