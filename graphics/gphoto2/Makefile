# $OpenBSD: Makefile,v 1.32 2015/07/07 10:29:28 ajacoutot Exp $

COMMENT=		digital camera command-line interface

VERSION=		2.5.8
DISTNAME=		gphoto2-${VERSION}
PKGNAME=		gphoto-${VERSION}

CATEGORIES=		graphics

HOMEPAGE=		http://gphoto.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>


# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cdk exif gphoto2 gphoto2_port jpeg ltdl m ncurses
WANTLIB += popt pthread readline

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gphoto/}

MODULES=		devel/gettext

LIB_DEPENDS=		devel/cdk \
			devel/popt \
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
