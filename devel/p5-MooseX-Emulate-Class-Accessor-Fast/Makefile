# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:02 sthen Exp $

COMMENT =		emulate Class::Accessor::Fast behavior using Moose

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		MooseX-Emulate-Class-Accessor-Fast-0.009032
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Moose>=0.84 \
			devel/p5-namespace-clean
TEST_DEPENDS =		devel/p5-Test-Exception

.include <bsd.port.mk>
