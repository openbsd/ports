# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:07 sthen Exp $

COMMENT=	interface to the Audioscrobbler WebService API

DISTNAME =	WebService-Audioscrobbler-0.08
CATEGORIES=	www audio
REVISION =	0

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Cache-Cache \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Accessor \
		devel/p5-Universal-require \
		devel/p5-CLASS \
		textproc/p5-XML-Simple \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
