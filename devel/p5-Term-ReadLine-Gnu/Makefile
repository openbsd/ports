# $OpenBSD: Makefile,v 1.37 2020/07/03 21:45:11 sthen Exp $

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.36
CATEGORIES=		devel
REVISION=		0

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c curses perl readline

TEST_DEPENDS=		x11/p5-Tk
TEST_FLAGS=		TERM=${TERM} DISPLAY=${DISPLAY}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
