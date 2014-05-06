# $OpenBSD: Makefile,v 1.1.1.1 2014/05/06 21:09:28 landry Exp $

COMMENT =	Thumbnail plugin for p5-Dancer

MODULES =	cpan
DISTNAME =	Dancer-Plugin-Thumbnail-0.10
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-Dancer \
		devel/p5-lib-abs \
		graphics/p5-GD \
		converters/p5-JSON-Any \
		devel/p5-Object-Signature

#cpanplus installs them otherwise..
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
