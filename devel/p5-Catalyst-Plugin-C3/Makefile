# $OpenBSD: Makefile,v 1.6 2015/01/21 14:27:56 sthen Exp $

COMMENT =	Catalyst plugin to subvert NEXT to use Class::C3

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-C3-0.03
REVISION =	0
CATEGORIES =	devel www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-Class-C3
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
