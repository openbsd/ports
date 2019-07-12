# $OpenBSD: Makefile,v 1.18 2019/07/12 20:47:33 sthen Exp $

COMMENT =		low-calorie MIME generator

DISTNAME =		MIME-Lite-3.030
CATEGORIES =		mail

PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		mail/p5-Email-Date-Format \
			mail/p5-MIME-Types \
			mail/p5-Mail-Tools

BUILD_DEPENDS = 	${RUN_DEPENDS}

MODULES =		cpan
PKG_ARCH =		*
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
