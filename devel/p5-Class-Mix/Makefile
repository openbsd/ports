# $OpenBSD: Makefile,v 1.3 2017/11/10 06:06:10 benoit Exp $

COMMENT =		dynamic class mixing

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Class-Mix-0.006
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Params-Classify

CONFIGURE_STYLE = 	modbuild

.include <bsd.port.mk>
