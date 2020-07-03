# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:24 sthen Exp $

COMMENT = 	determine email folder type

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Email-FolderType-0.814
REVISION =	1
CATEGORIES =	mail

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Module-Pluggable
TEST_DEPENDS =	devel/p5-Test-Pod \
		sysutils/p5-Capture-Tiny

.include <bsd.port.mk>
