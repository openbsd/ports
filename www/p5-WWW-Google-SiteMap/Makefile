# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:22 naddy Exp $

COMMENT= 	perl interface to google sitemap protocol

MODULES=	cpan
PKG_ARCH=	*

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
