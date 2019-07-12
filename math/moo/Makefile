#	$OpenBSD: Makefile,v 1.14 2019/07/12 20:47:43 sthen Exp $

COMMENT=		"Marco's Object Oriented calculator"

GH_ACCOUNT=		raylai
GH_PROJECT=		moo
GH_TAGNAME=		1.5
REVISION=		0

CATEGORIES=		math

# Public domain
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

MAKE_FLAGS=		CC=${CC}
FAKE_FLAGS=		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
