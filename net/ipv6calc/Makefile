# $OpenBSD: Makefile,v 1.21 2017/11/28 12:03:28 jasper Exp $

COMMENT=	tool for manipulating IPv6 addresses

GH_TAGNAME =	1.0.0
GH_PROJECT =	ipv6calc
GH_ACCOUNT =	pbiering
CATEGORIES=	net

HOMEPAGE=	http://www.deepspace6.net/projects/ipv6calc.html

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
MAKE_FLAGS=	DEFAULT_CFLAGS=

TEST_TARGET=	test

.include <bsd.port.mk>
