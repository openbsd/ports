# $OpenBSD: Makefile,v 1.33 2016/03/20 19:56:36 naddy Exp $

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.28
CATEGORIES=		devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl readline termcap

TEST_DEPENDS=	x11/p5-Tk
TEST_FLAGS=		TERM=${TERM}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
