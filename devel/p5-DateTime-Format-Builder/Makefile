# $OpenBSD: Makefile,v 1.16 2020/07/24 01:26:33 afresh1 Exp $

COMMENT =	create DateTime parser classes and objects

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Format-Builder-0.82
EPOCH =		0
CATEGORIES =	devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODCPAN_EXAMPLES =	Yes

RUN_DEPENDS =	devel/p5-DateTime>=1.0 \
		devel/p5-DateTime-Format-Strptime>=1.04 \
		devel/p5-Params-Validate>=0.72

TEST_DEPENDS =	devel/p5-DateTime-Format-HTTP \
		devel/p5-DateTime-Format-Mail

# Extra DEPENDS to avoid skipping tests
MAKE_ENV =	TEST_POD=Yes
TEST_DEPENDS +=	devel/p5-Devel-Cycle \
		devel/p5-Test-Memory-Cycle

.include <bsd.port.mk>
