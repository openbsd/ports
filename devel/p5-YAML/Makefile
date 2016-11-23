# $OpenBSD: Makefile,v 1.20 2016/11/23 00:47:06 afresh1 Exp $

COMMENT =	YAML Ain't Markup Language

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	YAML-1.19
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-YAML-XS

TEST_DEPENDS =	devel/p5-Test-YAML>=1.05 \
		devel/p5-Test-Pod
MAKE_ENV +=	RELEASE_TESTING=1

.include <bsd.port.mk>

