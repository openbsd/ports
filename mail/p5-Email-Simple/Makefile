# $OpenBSD: Makefile,v 1.13 2014/07/21 06:29:22 giovanni Exp $

COMMENT =	simple module for handling email messages

MODULES =	cpan
DISTNAME =	Email-Simple-2.203
CATEGORIES =	mail
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		mail/p5-Email-Date-Format
BUILD_DEPENDS = 	${RUN_DEPENDS}

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
