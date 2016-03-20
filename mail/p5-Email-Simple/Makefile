# $OpenBSD: Makefile,v 1.18 2016/03/20 19:56:45 naddy Exp $

COMMENT =	simple module for handling email messages

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Email-Simple-2.210
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		mail/p5-Email-Date-Format
BUILD_DEPENDS = 	${RUN_DEPENDS}

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
