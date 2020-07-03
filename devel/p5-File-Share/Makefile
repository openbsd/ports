# $OpenBSD: Makefile,v 1.3 2020/07/03 21:44:53 sthen Exp $

COMMENT =	extend File::ShareDir to local libraries

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	File-Share-0.25
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-File-ShareDir>=1.03

MAKE_ENV +=		TEST_POD=Yes RELEASE_TESTING=Yes

.include <bsd.port.mk>
