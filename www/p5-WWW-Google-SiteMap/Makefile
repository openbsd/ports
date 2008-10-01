# $OpenBSD: Makefile,v 1.3 2008/10/01 17:35:02 sthen Exp $

COMMENT= 	perl interface to google sitemap protocol

MODULES=	cpan

DISTNAME=	WWW-Google-SiteMap-1.09
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www
CONFIGURE_STYLE=modbuild

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-Simple \
		::textproc/p5-XML-Twig \
		::www/p5-URI

REGRESS_DEPENDS=::www/p5-libwww \
		::www/p5-WWW-Mechanize

.include <bsd.port.mk>
