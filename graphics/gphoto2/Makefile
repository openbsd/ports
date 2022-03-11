COMMENT=		digital camera command-line interface

VERSION=		2.5.28
DISTNAME=		gphoto2-${VERSION}
PKGNAME=		gphoto-${VERSION}

CATEGORIES=		graphics

HOMEPAGE=		http://gphoto.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 aa c cdk exif gphoto2 gphoto2_port iconv intl jpeg
WANTLIB += ltdl m curses popt pthread readline xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gphoto/}

LIB_DEPENDS=		devel/cdk \
			devel/popt \
			graphics/aalib \
			graphics/libgphoto2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			POPT_CFLAGS="-I${LOCALBASE}/include" \
			POPT_LIBS="-I${LOCALBASE}/lib -lpopt"

# checking how to link with libintl... /usr/local/lib/libintl.a ...
# (we want -lintl)
MAKE_FLAGS=		INTLLIBS='$$(LTLIBINTL)'

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
