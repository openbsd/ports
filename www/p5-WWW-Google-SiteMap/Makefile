# $OpenBSD: Makefile,v 1.1.1.1 2007/04/17 23:23:10 espie Exp $

COMMENT= 	"perl interface to google sitemap protocol"

MODULES=	cpan

DISTNAME=	WWW-Google-SiteMap-1.09
CATEGORIES=	www
CONFIGURE_STYLE=modbuild

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-Simple \
		::archivers/p5-IO-Zlib \
		::textproc/p5-XML-Twig \
		::www/p5-URI

.include <bsd.port.mk>
