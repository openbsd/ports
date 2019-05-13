# $OpenBSD: Makefile,v 1.4 2019/05/13 16:46:23 danj Exp $

COMMENT =		parse an email Received: header

MODULES =		cpan
PKG_ARCH =		*

DISTNAME =		Email-Received-1.00
CATEGORIES =		mail
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		textproc/p5-Regexp-Common
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		mail/p5-Email-Simple

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
