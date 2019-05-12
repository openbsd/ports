# $OpenBSD: Makefile,v 1.12 2019/05/12 15:11:01 cwen Exp $

COMMENT =	check the presence of tabs in your project

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Test-NoTabs-2.02

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		TEST_POD=1

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
