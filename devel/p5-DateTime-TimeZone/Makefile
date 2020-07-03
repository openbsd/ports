# $OpenBSD: Makefile,v 1.19 2020/07/03 21:44:48 sthen Exp $

COMMENT =		DateTime submodule for TZ

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		DateTime-TimeZone-1.64
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Class-Singleton \
		devel/p5-Params-Validate

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Output \
		devel/p5-Test-Requires

.include <bsd.port.mk>	
