# $OpenBSD: Makefile,v 1.8 2015/11/05 19:08:58 jca Exp $

COMMENT =	check the presence of tabs in your project

MODULES =	cpan
DISTNAME =	Test-NoTabs-1.3
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modinst

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
