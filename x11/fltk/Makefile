# $OpenBSD: Makefile,v 1.51 2015/08/25 13:18:28 sthen Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT=	Fast-Light Tool Kit

VER=		1.3.3
DISTNAME=	fltk-${VER}-source
PKGNAME=	fltk-${VER}
REVISION=	0

CATEGORIES=	x11

# These all need to stay in sync.
SHARED_LIBS=	fltk		8.0 \
		fltk_forms	8.0 \
		fltk_gl		8.0 \
		fltk_images	8.0

HOMEPAGE=	http://www.fltk.org/

# LGPLv2 with exceptions (see COPYING)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama
WANTLIB += c fontconfig jpeg m png pthread stdc++ z

MASTER_SITES=	http://fltk.org/pub/fltk/${VER}/

LIB_DEPENDS=	graphics/jpeg \
		graphics/png

NO_TEST=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.69
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-threads
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib" \
		LIBfltk_VERSION="${LIBfltk_VERSION}"
.for n v in ${SHARED_LIBS}
MAKE_ENV+=	LIB$n_VERSION=${LIB$n_VERSION}
.endfor

WRKDIST=	${WRKDIR}/fltk-${VER}

pre-build:
	${SUBST_CMD} ${WRKSRC}/src/Fl_Preferences.cxx

.include <bsd.port.mk>
