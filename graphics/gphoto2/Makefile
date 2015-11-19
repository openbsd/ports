# $OpenBSD: Makefile,v 1.33 2015/11/19 07:16:35 ajacoutot Exp $

COMMENT=		digital camera command-line interface

VERSION=		2.5.9
DISTNAME=		gphoto2-${VERSION}
PKGNAME=		gphoto-${VERSION}

CATEGORIES=		graphics

HOMEPAGE=		http://gphoto.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 aa c cdk exif gphoto2 gphoto2_port jpeg ltdl m
WANTLIB += ncurses popt pthread readline xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gphoto/}

MODULES=		devel/gettext

LIB_DEPENDS=		devel/cdk \
			devel/popt \
			graphics/aalib \
			graphics/libgphoto2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			POPT_CFLAGS="-I${LOCALBASE}/include" \
			POPT_LIBS="-I${LOCALBASE}/lib -lpopt"

CONFIGURE_ARGS=		${CONFIGURE_SHARED}

# checking how to link with libintl... /usr/local/lib/libintl.a ...
# (we want -lintl)
MAKE_FLAGS=		INTLLIBS='$$(LTLIBINTL)'

.include <bsd.port.mk>
