# $OpenBSD: Makefile,v 1.24 2019/07/12 20:43:34 sthen Exp $

COMMENT=	compact disk input and control library

DISTNAME=	libcdio-2.1.0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	audio devel
MASTER_SITES=	${MASTER_SITE_GNU:=libcdio/}

SHARED_LIBS=	cdio		1.0 \
		cdio++		1.0 \
		iso9660		1.0 \
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
