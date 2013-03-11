# $OpenBSD: Makefile,v 1.14 2013/03/11 11:23:52 espie Exp $

COMMENT =		low-calorie MIME generator

DISTNAME =		MIME-Lite-3.027
REVISION =		1
CATEGORIES =		mail

PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		mail/p5-Email-Date-Format \
			mail/p5-MIME-Types \
			mail/p5-Mail-Tools

BUILD_DEPENDS = 	${RUN_DEPENDS}

MODULES =		cpan
MAKE_ENV +=		TEST_POD=1
USE_GROFF =		Yes

.include <bsd.port.mk>
