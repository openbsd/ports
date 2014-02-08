# $OpenBSD: Makefile,v 1.2 2014/02/08 22:22:55 bluhm Exp $

COMMENT =		parse an email Received: header

MODULES =		cpan

DISTNAME =		Email-Received-1.00
CATEGORIES =		mail

MAINTAINER =		Marcus Glocker <marcus@nazgul.ch>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		textproc/p5-Regexp-Common
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		mail/p5-Email-Simple

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
