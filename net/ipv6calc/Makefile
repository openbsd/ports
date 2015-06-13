# $OpenBSD: Makefile,v 1.20 2015/06/13 07:34:47 bentley Exp $

COMMENT=	tool for manipulating IPv6 addresses

DISTNAME=	ipv6calc-0.90.0
CATEGORIES=	net
HOMEPAGE=	http://www.deepspace6.net/projects/ipv6calc.html

MASTER_SITES=	ftp://ftp.deepspace6.net/pub/ds6/sources/ipv6calc/ \
		ftp://ftp.bieringer.de/pub/linux/IPv6/ipv6calc/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
MAKE_FLAGS=	DEFAULT_CFLAGS=

TEST_TARGET=	test

.include <bsd.port.mk>
