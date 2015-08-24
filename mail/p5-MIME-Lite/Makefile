# $OpenBSD: Makefile,v 1.16 2015/08/24 10:58:55 benoit Exp $

COMMENT =		low-calorie MIME generator

DISTNAME =		MIME-Lite-3.030
CATEGORIES =		mail

PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		mail/p5-Email-Date-Format \
			mail/p5-MIME-Types \
			mail/p5-Mail-Tools

BUILD_DEPENDS = 	${RUN_DEPENDS}

MODULES =		cpan
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
