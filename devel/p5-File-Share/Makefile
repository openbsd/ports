# $OpenBSD: Makefile,v 1.1.1.1 2019/05/16 04:33:07 afresh1 Exp $

COMMENT =	extend File::ShareDir to local libraries

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	File-Share-0.25
CATEGORIES =	devel

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-File-ShareDir>=1.03

MAKE_ENV +=		TEST_POD=Yes RELEASE_TESTING=Yes

.include <bsd.port.mk>
