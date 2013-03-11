# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:47 espie Exp $

COMMENT= 	perl interface to google sitemap protocol

MODULES=	cpan

DISTNAME=	WWW-Google-SiteMap-1.09
REVISION=	1
CATEGORIES=	www
CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-Simple \
		textproc/p5-XML-Twig \
		www/p5-URI

TEST_DEPENDS=www/p5-libwww \
		www/p5-WWW-Mechanize

.include <bsd.port.mk>
