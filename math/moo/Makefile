#	$OpenBSD: Makefile,v 1.12 2016/06/04 15:57:02 sthen Exp $

COMMENT=		"Marco's Object Oriented calculator"

GH_ACCOUNT=		raylai
GH_PROJECT=		moo
GH_TAGNAME=		1.5

CATEGORIES=		math

MAINTAINER=		Ray Lai <ray@raylai.com>

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c

MAKE_FLAGS=		CC=${CC}
FAKE_FLAGS=		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
