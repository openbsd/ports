# $OpenBSD: Makefile,v 1.7 2015/01/21 14:43:33 sthen Exp $

COMMENT=	interface to the Audioscrobbler WebService API

DISTNAME=	WebService-Audioscrobbler-0.07
REVISION=	0
CATEGORIES=	www audio

MODULES=	cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Cache-Cache \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Accessor \
		devel/p5-Universal-require \
		devel/p5-CLASS \
		textproc/p5-XML-Simple \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
