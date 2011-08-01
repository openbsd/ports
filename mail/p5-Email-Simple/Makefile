# $OpenBSD: Makefile,v 1.11 2011/08/01 19:42:19 stephan Exp $

COMMENT =	simple module for handling email messages

MODULES =	cpan
DISTNAME =	Email-Simple-2.100
REVISION =	1
CATEGORIES =	mail
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		mail/p5-Email-Date-Format
BUILD_DEPENDS = 	${RUN_DEPENDS}

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
