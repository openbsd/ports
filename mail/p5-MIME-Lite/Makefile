# $OpenBSD: Makefile,v 1.8 2009/11/06 15:46:05 stephan Exp $

COMMENT =		low-calorie MIME generator

DISTNAME =		MIME-Lite-3.027
CATEGORIES =		mail

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		::mail/p5-Email-Date-Format \
			::mail/p5-MIME-Types \
			::mail/p5-Mail-Tools

BUILD_DEPENDS = 	${RUN_DEPENDS}

MODULES =		cpan
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
