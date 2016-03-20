# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:29 naddy Exp $

COMMENT =	emulate Class::Accessor::Fast behavior using Moose

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Emulate-Class-Accessor-Fast-0.00903
REVISION =	0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Moose>=0.74 \
			devel/p5-namespace-clean
TEST_DEPENDS =	devel/p5-Test-Exception

.include <bsd.port.mk>
