# $OpenBSD: Makefile,v 1.20 2014/03/16 02:58:06 afresh1 Exp $

COMMENT =		perl objected oriented Date Time

SHARED_ONLY =		Yes

MODULES =		cpan
DISTNAME =		DateTime-1.07
EPOCH =			0
CATEGORIES =		devel

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
