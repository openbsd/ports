# $OpenBSD: Makefile,v 1.12 2017/07/26 22:45:24 sthen Exp $

COMMENT =		extensible drawing editor

V =			7.1.2
SUBST_VARS +=		V
DISTNAME =		ipe-${V}-src
PKGNAME =		ipe-${V}
REVISION =		5

# their libraries would be installed as libxxx.so.${V}, overide this.
SHLIB_VERSION =	0.0

SHARED_LIBS +=		ipe		${SHLIB_VERSION}
SHARED_LIBS +=		ipecairo	${SHLIB_VERSION}
SHARED_LIBS +=		ipecanvas	${SHLIB_VERSION}
SHARED_LIBS +=		ipelua		${SHLIB_VERSION}
SHARED_LIBS +=		ipeui		${SHLIB_VERSION}

CATEGORIES =		graphics math
HOMEPAGE =		http://ipe7.sourceforge.net/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL QtGui X11 Xrender c cairo expat fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 ${MODLUA_WANTLIB} m pixman-1 png
WANTLIB += pthread pthread-stubs ${COMPILER_LIBCXX} xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ipe7/}

# Dependencies
MODULES =		lang/lua \
			x11/qt4 \
			devel/gettext
LIB_DEPENDS =		${MODLUA_LIB_DEPENDS} \
			${MODQT4_LIB_DEPENDS}
RUN_DEPENDS =		print/texlive/base \
			x11/xvkbd

MAKE_FLAGS +=		CXX="${CXX}" \
			IPEPREFIX=${PREFIX} \
			IPE_USE_ICONV=-DIPE_USE_ICONV \
			ICONV_CFLAGS=-I${LOCALBASE}/include \
			ICONV_LIBS="-L${LOCALBASE}/lib -liconv" \
			SHLIB_VERSION=${SHLIB_VERSION}
MAKE_ENV +=		PKG_CONFIG_PATH=${LOCALBASE}/lib/qt4/pkgconfig
FAKE_FLAGS +=		INSTALL_ROOT=${WRKINST} \
			SHLIB_VERSION=${SHLIB_VERSION} \
			IPEMANDIR=${PREFIX}/man/man1 \
			IPEDOCDIR=${PREFIX}/share/doc/ipe

USE_GMAKE =		Yes
NO_TEST =		Yes

WRKDIST = ${WRKDIR}/${PKGNAME}
WRKSRC = ${WRKDIST}/src

post-install:
	sed -i "s,/usr/share/,${LOCALBASE}/share/," \
		${WRKDIST}/fontmaps/texlive-fontmap.xml
	${INSTALL_DATA} -c ${WRKDIST}/fontmaps/texlive-fontmap.xml \
		${PREFIX}/share/ipe/7.1.2/fontmap.xml

.include <bsd.port.mk>
