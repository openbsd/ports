# $OpenBSD: Makefile,v 1.33 2006/10/19 09:41:32 wilfried Exp $

COMMENT=	"Fast-Light Tool Kit"

VER=		1.1.7
DISTNAME=	fltk-${VER}
CATEGORIES=	x11
SHARED_LIBS=	fltk		6.0 \
		fltk_forms	6.0 \
		fltk_gl		6.0 \
		fltk_images	6.0

HOMEPAGE=	http://www.fltk.org/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m stdc++ z

DISTFILES=	${DISTNAME}-source${EXTRACT_SUFX}

MASTER_SITES=	ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/fltk/${VER}/ \
		ftp://ftp.rz.tu-bs.de/pub/mirror/ftp.easysw.com/ftp/pub/fltk/${VER}/ \
		http://mirror.nu6.org//ftp.easysw.com/pub/fltk/${VER}/ \
		http://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/fltk/${VER}/ \
		http://ftp.rz.tu-bs.de/pub/mirror/ftp.easysw.com/ftp/pub/fltk/${VER}/ \
		http://ftp.easysw.com/pub/fltk/${VER}/ \
		ftp://ftp.easysw.com/pub/fltk/${VER}/ \
		ftp://ftp3.easysw.com/pub/fltk/${VER}/

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png

NO_REGRESS=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.54
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib" \
		FL_MAJOR_VERSION=${LIBfltk_VERSION:R} \
		FL_MINOR_VERSION=${LIBfltk_VERSION:E} \
		FL_PATCH_VERSION=0
.for n v in ${SHARED_LIBS}
MAKE_ENV+=	LIB$n_VERSION=${LIB$n_VERSION}
.endfor

pre-build:
	perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," \
		${WRKSRC}/src/Fl_Preferences.cxx

.include <bsd.port.mk>
