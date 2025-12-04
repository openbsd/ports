COMMENT=		digital camera command-line interface

VERSION=		2.5.32
DISTNAME=		gphoto2-${VERSION}
PKGNAME=		gphoto-${VERSION}

CATEGORIES=		graphics

HOMEPAGE=		https://gphoto.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 aa c curses exif gphoto2 gphoto2_port iconv intl
WANTLIB += jpeg ltdl m popt pthread readline xcb

# needs -Wimplicit-int, etc.
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

SITES=			${SITE_SOURCEFORGE:=gphoto/}

LIB_DEPENDS=		devel/popt \
			graphics/aalib \
			graphics/libgphoto2

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--without-cdk

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
