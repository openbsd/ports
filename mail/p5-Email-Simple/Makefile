# $OpenBSD: Makefile,v 1.16 2015/08/14 13:22:20 benoit Exp $

COMMENT =	simple module for handling email messages

MODULES =	cpan
DISTNAME =	Email-Simple-2.208
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		mail/p5-Email-Date-Format
BUILD_DEPENDS = 	${RUN_DEPENDS}

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
