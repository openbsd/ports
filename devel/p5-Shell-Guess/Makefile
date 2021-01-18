# $OpenBSD: Makefile,v 1.1.1.1 2021/01/18 13:29:13 robert Exp $

COMMENT = 	make an educated guess about the shell in use

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Shell-Guess-0.09

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	sysutils/p5-Unix-Process

.include <bsd.port.mk>
