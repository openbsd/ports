# $OpenBSD: Makefile,v 1.44 2013/02/05 22:41:35 sthen Exp $

COMMENT=	Fast-Light Tool Kit

VER=		1.3.0
DISTNAME=	fltk-${VER}-source
PKGNAME=	fltk-${VER}
REVISION=	0

CATEGORIES=	x11
SHARED_LIBS=	fltk		7.0 \
		fltk_forms	7.0 \
		fltk_gl		7.0 \
		fltk_images	7.0

HOMEPAGE=	http://www.fltk.org/

# LGPLv2 with exceptions (see COPYING)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama c fontconfig jpeg m
WANTLIB += png pthread stdc++ z

MASTER_SITES=	http://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/fltk/${VER}/ \
		http://ftp.easysw.com/pub/fltk/${VER}/ \
		ftp://ftp.easysw.com/pub/fltk/${VER}/

LIB_DEPENDS=	graphics/jpeg \
		graphics/png

NO_REGRESS=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.59
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-threads
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
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
