# $OpenBSD: Makefile,v 1.22 2014/11/01 19:59:16 jasper Exp $

COMMENT =		perl objected oriented Date Time

SHARED_ONLY =		Yes

MODULES =		cpan
DISTNAME =		DateTime-1.07
EPOCH =			0
CATEGORIES =		devel
REVISION =		1

MAINTAINER = Andrew Fresh <afresh1@openbsd.org>

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
