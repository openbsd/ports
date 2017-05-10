# $OpenBSD: Makefile,v 1.11 2017/05/10 12:57:24 benoit Exp $

COMMENT =	check the presence of tabs in your project

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-NoTabs-2.00
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
