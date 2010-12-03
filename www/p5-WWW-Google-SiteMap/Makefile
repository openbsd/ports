# $OpenBSD: Makefile,v 1.7 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT= 	perl interface to google sitemap protocol

MODULES=	cpan

DISTNAME=	WWW-Google-SiteMap-1.09
REVISION=	1
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
