# $OpenBSD: Makefile,v 1.1.1.1 2017/02/14 16:06:00 naddy Exp $

COMMENT=	implementation of IDNA2008 internationalized domain names

DISTNAME=	libidn2-0.16
CATEGORIES=	devel
HOMEPAGE=	https://www.gnu.org/software/libidn/\#libidn2

SHARED_LIBS=	idn2	0.0	# 1.4

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://alpha.gnu.org/gnu/libidn/

WANTLIB=	c iconv unistring

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	converters/libunistring

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
