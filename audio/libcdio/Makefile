COMMENT=	compact disk input and control library

V=		2.2.0
DISTNAME=	libcdio-${V}

CATEGORIES=	audio devel

SITES=		https://github.com/libcdio/libcdio/releases/download/${V}0/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	cdio		1.0 \
		cdio++		1.0 \
		iso9660		2.0 \
		iso9660++	1.0 \
		udf		1.0

HOMEPAGE=	https://www.gnu.org/software/libcdio/

# GPLv2+
PERMIT_PACKAGE=	Yes
WANTLIB=	c cddb curses iconv m ${COMPILER_LIBCXX}

LIB_DEPENDS=	audio/libcddb \
		converters/libiconv
BUILD_DEPENDS=	devel/libtool

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-vcd-info

.include <bsd.port.mk>
