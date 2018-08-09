# $OpenBSD: Makefile,v 1.1.1.1 2018/08/09 11:25:29 fcambus Exp $

COMMENT =	obtain the REFCNT value of a referent

DISTNAME =	Devel-Refcount-0.10

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-Module-Build \
		devel/p5-Test-Fatal

MAKE_ENV =	TEST_POD=Yes

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
