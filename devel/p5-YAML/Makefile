# $OpenBSD: Makefile,v 1.18 2016/03/13 15:49:16 naddy Exp $

COMMENT =	YAML Ain't Markup Language

MODULES =	cpan

DISTNAME =	YAML-1.15
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-YAML-XS

TEST_DEPENDS =	devel/p5-Test-YAML>=1.05 \
		devel/p5-Test-Pod
MAKE_ENV +=	RELEASE_TESTING=1

.include <bsd.port.mk>

