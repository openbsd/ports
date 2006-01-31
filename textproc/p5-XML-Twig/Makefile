# $OpenBSD: Makefile,v 1.4 2006/01/31 22:06:57 steven Exp $

COMMENT=	"perl module for parsing huge XML documents"

DISTNAME=	XML-Twig-3.23
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

HOMEPAGE=	http://www.xmltwig.com/xmltwig/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

RUN_DEPENDS=	::textproc/p5-XML-Parser	
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::converters/p5-Text-Iconv \
		::converters/p5-Unicode-Map \
		::converters/p5-Unicode-Map8 \
		::converters/p5-Unicode-String \
		::devel/p5-Test-Pod \
		::textproc/p5-XML-SAX \
		::textproc/p5-XML-Simple \
		::textproc/p5-XML-XPath \
		::www/p5-libwww \
		::www/p5-HTML-Tree
		
PKG_ARCH=	*		

.include <bsd.port.mk>
