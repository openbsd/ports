# $OpenBSD: Makefile,v 1.2 2019/07/12 20:44:52 sthen Exp $

COMMENT =	obtain the REFCNT value of a referent

DISTNAME =	Devel-Refcount-0.10

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-Module-Build \
		devel/p5-Test-Fatal

MAKE_ENV =	TEST_POD=Yes

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
