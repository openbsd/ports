# $OpenBSD: Makefile,v 1.5 2007/11/13 14:06:21 steven Exp $

COMMENT=	library to share image and audio files between projects

DISTNAME=	libassetml-1.2.1
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	assetml              0.0      # .0.0
CATEGORIES=	devel

HOMEPAGE=	http://www.ofset.org/assetml/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ofset/}

WANTLIB=	c m z pcre

MODULES=	devel/gettext
BUILD_DEPENDS=	::textproc/texi2html
LIB_DEPENDS=	glib-2.0.>=0.8,gobject-2.0.>=0.8::devel/glib2 \
		xml2.>=9::textproc/libxml \
		popt::devel/popt

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
