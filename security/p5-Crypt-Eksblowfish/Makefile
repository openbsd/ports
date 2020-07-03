# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:40 sthen Exp $

COMMENT =	the Eksblowfish block cipher

MODULES =	cpan
DISTNAME =	Crypt-Eksblowfish-0.009
CATEGORIES =	security
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Class-Mix

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
