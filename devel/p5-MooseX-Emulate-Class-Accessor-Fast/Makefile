# $OpenBSD: Makefile,v 1.10 2018/12/07 07:25:04 solene Exp $

COMMENT =		emulate Class::Accessor::Fast behavior using Moose

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		MooseX-Emulate-Class-Accessor-Fast-0.009032
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Moose>=0.84 \
			devel/p5-namespace-clean
TEST_DEPENDS =		devel/p5-Test-Exception

.include <bsd.port.mk>
