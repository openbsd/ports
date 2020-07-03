# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:13 sthen Exp $

COMMENT =	test and show differences in strings and data structures

DISTNAME =	Test-Differences-0.64
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Artistic
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	sysutils/p5-Capture-Tiny>=0.24 \
		textproc/p5-Text-Diff>=1.43

# Addtional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
