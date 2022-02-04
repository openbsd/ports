# $OpenBSD: Makefile,v 1.29 2022/02/04 11:44:03 sthen Exp $

COMMENT=	tool for manipulating IPv6 addresses

GH_TAGNAME =	4.0.1
GH_PROJECT =	ipv6calc
GH_ACCOUNT =	pbiering
CATEGORIES=	net

HOMEPAGE=	https://www.deepspace6.net/projects/ipv6calc.html

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto m

BUILD_DEPENDS=	shells/bash

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
MAKE_FLAGS=	DEFAULT_CFLAGS=

TEST_TARGET=	test
TEST_DEPENDS=	shells/bash \
		security/p5-Digest-SHA1

pre-test:
	sed -i 's,^#!/bin/sh,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/*/test*.sh

.include <bsd.port.mk>
