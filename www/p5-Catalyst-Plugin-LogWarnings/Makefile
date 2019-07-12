# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:51 sthen Exp $

COMMENT =	log Perl warnings to your Catalyst log object

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-LogWarnings-0.03
CATEGORIES =	www
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
