# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:16 naddy Exp $

COMMENT =		dynamic class mixing

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Class-Mix-0.005
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Params-Classify

CONFIGURE_STYLE = 	modbuild

.include <bsd.port.mk>
