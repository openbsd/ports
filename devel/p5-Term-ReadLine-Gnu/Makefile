# $OpenBSD: Makefile,v 1.34 2019/05/17 16:19:38 sthen Exp $

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.28
CATEGORIES=		devel
REVISION=		0

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses perl readline

TEST_DEPENDS=	x11/p5-Tk
TEST_FLAGS=		TERM=${TERM}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
