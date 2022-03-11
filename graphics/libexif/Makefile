COMMENT=	extract digital camera info tags from JPEG images

V=		0.6.24
DISTNAME=	libexif-$V
R0EVISION=	0
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	exif	13.1

CATEGORIES=	graphics

HOMEPAGE=	https://libexif.github.io/

# LGPLv2.1
PERMIT_PACKAGE=   Yes

WANTLIB += iconv intl m

MASTER_SITES=	https://github.com/libexif/libexif/releases/download/v$V/

LIB_DEPENDS=		devel/gettext,-runtime
SEPARATE_BUILD=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS=		devel/gettext,-tools
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-docs
USE_GMAKE=		Yes

.include <bsd.port.mk>
