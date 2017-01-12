# $OpenBSD: Makefile,v 1.19 2017/01/12 14:37:03 sthen Exp $

COMMENT =	simple module for handling email messages

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Email-Simple-2.213
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		mail/p5-Email-Date-Format
BUILD_DEPENDS = 	${RUN_DEPENDS}

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
