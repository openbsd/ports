# $OpenBSD: Makefile,v 1.1.1.1 2015/10/14 17:36:22 robert Exp $

SHARED_ONLY =	Yes

COMMENT =	the Eksblowfish block cipher

MODULES =	cpan
DISTNAME =	Crypt-Eksblowfish-0.009
CATEGORIES =	security

# perl
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += c

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Class-Mix

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
