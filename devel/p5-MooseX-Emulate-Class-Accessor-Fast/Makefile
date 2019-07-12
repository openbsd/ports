# $OpenBSD: Makefile,v 1.11 2019/07/12 20:45:01 sthen Exp $

COMMENT =		emulate Class::Accessor::Fast behavior using Moose

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		MooseX-Emulate-Class-Accessor-Fast-0.009032
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Moose>=0.84 \
			devel/p5-namespace-clean
TEST_DEPENDS =		devel/p5-Test-Exception

.include <bsd.port.mk>
