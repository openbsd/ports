# $OpenBSD: Makefile,v 1.5 2020/07/03 21:44:43 sthen Exp $

COMMENT =		dynamic class mixing

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Class-Mix-0.006
CATEGORIES =		devel
REVISION =		0

# perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Params-Classify

CONFIGURE_STYLE = 	modbuild

.include <bsd.port.mk>
