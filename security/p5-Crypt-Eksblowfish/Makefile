# $OpenBSD: Makefile,v 1.3 2019/07/12 21:07:46 sthen Exp $

COMMENT =	the Eksblowfish block cipher

MODULES =	cpan
DISTNAME =	Crypt-Eksblowfish-0.009
CATEGORIES =	security

# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Class-Mix

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
