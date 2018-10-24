# $OpenBSD: Makefile,v 1.1.1.1 2018/10/24 19:59:13 bluhm Exp $

COMMENT =		inside-out objects with Moose

DISTNAME =		MooseX-InsideOut-0.106
CATEGORIES =		devel

MAINTAINER =		Charlene Wendling <julianaito@posteo.jp>

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Hash-Util-FieldHash-Compat \
			devel/p5-Moose>=0.94 \
			devel/p5-namespace-clean>=0.11

TEST_DEPENDS =		devel/p5-Test-Pod-Coverage>=1.08 \
			devel/p5-Test-Pod>=1.41

TEST_ENV =		RELEASE_TESTING=1

.include <bsd.port.mk>
