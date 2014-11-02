# $OpenBSD: Makefile,v 1.16 2014/11/02 09:35:05 jasper Exp $

COMMENT =		DateTime submodule for TZ

MODULES =		cpan
DISTNAME =		DateTime-TimeZone-1.64
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Class-Singleton \
		devel/p5-Params-Validate

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Output \
		devel/p5-Test-Requires

.include <bsd.port.mk>	
