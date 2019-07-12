# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:10 sthen Exp $

COMMENT =	check the presence of tabs in your project

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Test-NoTabs-2.02

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=1

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
