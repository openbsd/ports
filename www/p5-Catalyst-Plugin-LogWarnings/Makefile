# $OpenBSD: Makefile,v 1.8 2015/11/05 19:09:00 jca Exp $

COMMENT =	log Perl warnings to your Catalyst log object

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-LogWarnings-0.03
CATEGORIES =	www
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
