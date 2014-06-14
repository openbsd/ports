# $OpenBSD: Makefile,v 1.21 2014/06/14 23:24:55 sthen Exp $

COMMENT =		perl objected oriented Date Time

SHARED_ONLY =		Yes

MODULES =		cpan
DISTNAME =		DateTime-1.07
EPOCH =			0
CATEGORIES =		devel
REVISION =		0

MAINTAINER = Andrew Fresh <andrew@cpan.org>

# artistic_2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c
CONFIGURE_STYLE =	modbuild

TEST_DEPENDS =	devel/p5-Test-Fatal

RUN_DEPENDS =	devel/p5-DateTime-Locale \
		devel/p5-DateTime-TimeZone \
		devel/p5-Params-Validate \
		devel/p5-Try-Tiny

.include <bsd.port.mk>
