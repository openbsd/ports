# $OpenBSD: Makefile,v 1.3 2020/07/03 21:45:02 sthen Exp $

COMMENT =		inside-out objects with Moose

DISTNAME =		MooseX-InsideOut-0.106
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Charlene Wendling <julianaito@posteo.jp>

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Hash-Util-FieldHash-Compat \
			devel/p5-Moose>=0.94 \
			devel/p5-namespace-clean>=0.11

TEST_DEPENDS =		devel/p5-Test-Pod-Coverage>=1.08 \
			devel/p5-Test-Pod>=1.41

TEST_ENV =		RELEASE_TESTING=1

.include <bsd.port.mk>
