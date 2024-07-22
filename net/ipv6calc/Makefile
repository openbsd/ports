COMMENT=	tool for manipulating IPv6 addresses

DIST_TUPLE =	github	pbiering	ipv6calc	4.2.0	.
CATEGORIES=	net

HOMEPAGE=	https://www.deepspace6.net/projects/ipv6calc.html

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto m

BUILD_DEPENDS=	shells/bash

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
MAKE_FLAGS=	DEFAULT_CFLAGS=
FAKE_FLAGS=	DESTDIR=${WRKINST}/ datadir=${PREFIX}/share

TEST_TARGET=	test
TEST_DEPENDS=	shells/bash \
		security/p5-Digest-SHA1

pre-test:
	sed -i 's,^#!/bin/sh,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/*/test*.sh

.include <bsd.port.mk>
