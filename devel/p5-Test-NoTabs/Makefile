# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:15 sthen Exp $

COMMENT =	check the presence of tabs in your project

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Test-NoTabs-2.02
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=1

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
