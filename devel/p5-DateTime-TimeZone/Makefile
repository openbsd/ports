# $OpenBSD: Makefile,v 1.15 2014/03/16 02:57:14 afresh1 Exp $

COMMENT =		DateTime submodule for TZ

MODULES =		cpan
DISTNAME =		DateTime-TimeZone-1.64
REVISION =		0
CATEGORIES =		devel

MAINTAINER = Andrew Fresh <andrew@cpan.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Class-Singleton \
		devel/p5-Params-Validate

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Output \
		devel/p5-Test-Requires

.include <bsd.port.mk>	
