# $OpenBSD: Makefile,v 1.14 2020/05/17 22:37:08 cwen Exp $

COMMENT = 	determine email folder type

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Email-FolderType-0.814
REVISION =	0
CATEGORIES =	mail

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Module-Pluggable
TEST_DEPENDS =	devel/p5-Test-Pod \
		sysutils/p5-Capture-Tiny

.include <bsd.port.mk>
