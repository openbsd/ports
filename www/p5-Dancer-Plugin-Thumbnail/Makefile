# $OpenBSD: Makefile,v 1.3 2015/11/03 14:33:45 benoit Exp $

COMMENT =	thumbnail plugin for p5-Dancer

MODULES =	cpan
DISTNAME =	Dancer-Plugin-Thumbnail-0.11
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-Dancer \
		devel/p5-lib-abs \
		graphics/p5-GD \
		graphics/p5-Image-Size \
		converters/p5-JSON-Any \
		devel/p5-Object-Signature

#cpanplus installs them otherwise..
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
