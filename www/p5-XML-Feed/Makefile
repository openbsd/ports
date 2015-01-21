# $OpenBSD: Makefile,v 1.7 2015/01/21 14:43:33 sthen Exp $

COMMENT= 	interface to RSS and Atom feeds

MODULES=	cpan

DISTNAME=	XML-Feed-0.12
REVISION=	0
CATEGORIES=	www textproc
CONFIGURE_STYLE=modbuild

#perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	www/p5-HTML-Parser \
		www/p5-libwww

RUN_DEPENDS=	devel/p5-Class-ErrorHandler \
		textproc/p5-XML-RSS \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-Mail \
		devel/p5-DateTime-Format-W3CDTF \
		www/p5-URI-Fetch \
		www/p5-Feed-Find \
		www/p5-XML-Atom

.include <bsd.port.mk>
