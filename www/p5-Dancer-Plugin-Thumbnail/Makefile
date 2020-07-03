# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:59 sthen Exp $

COMMENT =	thumbnail plugin for p5-Dancer

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Dancer-Plugin-Thumbnail-0.14
CATEGORIES =	www
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-Dancer \
		devel/p5-lib-abs \
		graphics/p5-GD \
		graphics/p5-Image-Size \
		converters/p5-JSON-MaybeXS \
		devel/p5-Object-Signature

#cpanplus installs them otherwise..
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
