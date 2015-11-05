# $OpenBSD: Makefile,v 1.7 2015/11/05 19:08:56 jca Exp $

COMMENT =	Catalyst plugin to subvert NEXT to use Class::C3

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-C3-0.03
REVISION =	1
CATEGORIES =	devel www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-Class-C3
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
