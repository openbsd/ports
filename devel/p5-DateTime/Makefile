# $OpenBSD: Makefile,v 1.25 2019/07/12 20:44:50 sthen Exp $

COMMENT =		perl objected oriented Date Time

MODULES =		cpan
DISTNAME =		DateTime-1.07
EPOCH =			0
CATEGORIES =		devel
REVISION =		2

MAINTAINER = Andrew Fresh <afresh1@openbsd.org>

# artistic_2
PERMIT_PACKAGE =	Yes

WANTLIB += c perl
CONFIGURE_STYLE =	modbuild

TEST_DEPENDS =	devel/p5-Test-Fatal

RUN_DEPENDS =	devel/p5-DateTime-Locale \
		devel/p5-DateTime-TimeZone \
		devel/p5-Params-Validate \
		devel/p5-Try-Tiny

.include <bsd.port.mk>
