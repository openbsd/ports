#	$OpenBSD: Makefile,v 1.13 2019/05/08 19:08:58 danj Exp $

COMMENT=		"Marco's Object Oriented calculator"

GH_ACCOUNT=		raylai
GH_PROJECT=		moo
GH_TAGNAME=		1.5
REVISION=		0

CATEGORIES=		math

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c

MAKE_FLAGS=		CC=${CC}
FAKE_FLAGS=		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
