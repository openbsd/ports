# $OpenBSD: Makefile,v 1.7 2010/01/08 10:38:30 stephan Exp $

COMMENT =	simple module for handling email messages

MODULES =	cpan
DISTNAME =	Email-Simple-2.100
CATEGORIES =	mail

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		::mail/p5-Email-Date-Format
BUILD_DEPENDS = 	${RUN_DEPENDS}

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
