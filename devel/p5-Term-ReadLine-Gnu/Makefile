# $OpenBSD: Makefile,v 1.32 2016/01/09 09:44:49 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.28
CATEGORIES=		devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c readline termcap

TEST_DEPENDS=	x11/p5-Tk
TEST_FLAGS=		TERM=${TERM}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
