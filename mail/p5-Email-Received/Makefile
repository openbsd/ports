# $OpenBSD: Makefile,v 1.1.1.1 2013/05/14 04:14:47 mglocker Exp $

COMMENT =		parse an email Received: header

MODULES =		cpan

DISTNAME =		Email-Received-1.00
CATEGORIES =		mail

MAINTAINER =		Marcus Glocker <marcus@nazgul.ch>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		textproc/p5-Regexp-Common
BUILD_DEPENDS =		${RUN_DEPENDS}

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
