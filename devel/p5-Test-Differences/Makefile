# $OpenBSD: Makefile,v 1.15 2020/12/06 19:41:09 afresh1 Exp $

COMMENT =	test and show differences in strings and data structures

DISTNAME =	Test-Differences-0.67
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Artistic or GPL
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	sysutils/p5-Capture-Tiny>=0.24 \
		textproc/p5-Text-Diff>=1.43

# Addtional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
