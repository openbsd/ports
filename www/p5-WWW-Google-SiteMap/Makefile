# $OpenBSD: Makefile,v 1.9 2015/01/21 14:43:33 sthen Exp $

COMMENT= 	perl interface to google sitemap protocol

MODULES=	cpan

DISTNAME=	WWW-Google-SiteMap-1.09
REVISION=	1
CATEGORIES=	www
CONFIGURE_STYLE=modbuild

PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-Simple \
		textproc/p5-XML-Twig \
		www/p5-URI

TEST_DEPENDS=www/p5-libwww \
		www/p5-WWW-Mechanize

.include <bsd.port.mk>
