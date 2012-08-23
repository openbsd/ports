# $OpenBSD: Makefile,v 1.9 2012/08/23 15:08:05 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		retrieve names of code references

DISTNAME =		Sub-Identify-0.04
REVISION =		3
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c

MODULES =		cpan
USE_GROFF =		Yes

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
