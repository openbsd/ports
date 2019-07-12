# $OpenBSD: Makefile,v 1.36 2019/07/12 20:45:08 sthen Exp $

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.36
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c curses perl readline

TEST_DEPENDS=		x11/p5-Tk
TEST_FLAGS=		TERM=${TERM} DISPLAY=${DISPLAY}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
