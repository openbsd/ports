# $OpenBSD: Makefile,v 1.4 2020/07/03 21:44:50 sthen Exp $

COMMENT =	obtain the REFCNT value of a referent

DISTNAME =	Devel-Refcount-0.10
REVISION =	1

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-Module-Build \
		devel/p5-Test-Fatal

MAKE_ENV =	TEST_POD=Yes

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
