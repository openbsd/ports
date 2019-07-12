# $OpenBSD: Makefile,v 1.23 2019/07/12 20:48:29 sthen Exp $

COMMENT=	tool for manipulating IPv6 addresses

GH_TAGNAME =	1.1.0
GH_PROJECT =	ipv6calc
GH_ACCOUNT =	pbiering
CATEGORIES=	net

HOMEPAGE=	https://www.deepspace6.net/projects/ipv6calc.html

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto m

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
MAKE_FLAGS=	DEFAULT_CFLAGS=

# ipv6calc segfault on step "pipe tests"
TEST_TARGET=	test

.include <bsd.port.mk>
