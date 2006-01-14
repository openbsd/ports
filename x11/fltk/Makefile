# $OpenBSD: Makefile,v 1.31 2006/01/14 11:46:16 espie Exp $

COMMENT=	"Fast-Light Tool Kit"

VER=		1.1.4
DISTNAME=	fltk-${VER}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
SHARED_LIBS=	fltk		5.0 \
		fltk_forms	5.0 \
		fltk_gl		5.0 \
		fltk_images	5.0

HOMEPAGE=	http://www.fltk.org/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m stdc++ z

DISTFILES=	${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES=	ftp://ftp.easysw.com/pub/fltk/${VER}/ \
		ftp://ftp2.easysw.com/pub/fltk/${VER}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/fltk/${VER}/ \
		ftp://gd.tuwien.ac.at/hci/fltk/${VER}/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png

NO_REGRESS=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=autoconf dest no-autoheader
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
