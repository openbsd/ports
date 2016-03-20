# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:59 naddy Exp $

COMMENT =	the Eksblowfish block cipher

MODULES =	cpan
DISTNAME =	Crypt-Eksblowfish-0.009
CATEGORIES =	security

# perl
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += c perl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Class-Mix

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
