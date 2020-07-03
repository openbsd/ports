# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:01 sthen Exp $

COMMENT =	easy aliasing of methods and attributes in Moo
DISTNAME =	MooX-Aliases-0.001006
CATEGORIES =	devel
PKG_ARCH =	*
REVISION =	0

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes
MODULES =		cpan

RUN_DEPENDS =	devel/p5-Class-Method-Modifiers>=1.05 \
		devel/p5-Moo>=1.001 \
		devel/p5-strictures>=1
TEST_DEPENDS =	devel/p5-Test-Fatal>=0.003

.include <bsd.port.mk>
