# $OpenBSD: Makefile,v 1.31 2015/07/16 23:57:23 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.16
REVISION=		6
CATEGORIES=		devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c readline termcap

TEST_DEPENDS=	x11/p5-Tk
TEST_FLAGS=		TERM=${TERM}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
