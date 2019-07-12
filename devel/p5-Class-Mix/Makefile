# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:47 sthen Exp $

COMMENT =		dynamic class mixing

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Class-Mix-0.006
CATEGORIES =		devel

# perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Params-Classify

CONFIGURE_STYLE = 	modbuild

.include <bsd.port.mk>
