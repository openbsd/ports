# $OpenBSD: Makefile,v 1.6 2010/11/22 08:36:52 espie Exp $

COMMENT= 	perl interface to google sitemap protocol

MODULES=	cpan

DISTNAME=	WWW-Google-SiteMap-1.09
REVISION=	0
CATEGORIES=	www
CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-XML-Simple \
		textproc/p5-XML-Twig \
		www/p5-URI

REGRESS_DEPENDS=www/p5-libwww \
		www/p5-WWW-Mechanize

.include <bsd.port.mk>
