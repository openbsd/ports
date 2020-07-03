# $OpenBSD: Makefile,v 1.23 2020/07/03 21:45:20 sthen Exp $

COMMENT =	YAML Ain't Markup Language

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	YAML-1.26
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

# really, you want the faster one
RUN_DEPENDS =	devel/p5-YAML-XS

TEST_DEPENDS =	devel/p5-Test-Deep \
		devel/p5-Test-YAML>=1.05

# Additional depends to avoid skipping tests
TEST_ENV +=	AUTHOR_TESTING=1
TEST_DEPENDS +=	devel/p5-Test-Pod>=1.41

.include <bsd.port.mk>

