# $OpenBSD: Makefile,v 1.2 2004/06/12 21:12:35 msf Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl module for parsing huge XML documents"

DISTNAME=	XML-Twig-3.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

HOMEPAGE=	http://www.xmltwig.com/xmltwig/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

BUILD_DEPENDS=	::textproc/p5-XML-Parser
RUN_DEPENDS=	::textproc/p5-XML-Parser
REGRESS_DEPENDS=::textproc/p5-XML-Simple \
		::www/p5-libwww \
		::textproc/p5-XML-XPath \
		::textproc/p5-XML-SAX \
		::converters/p5-Unicode-Map \
		::converters/p5-Unicode-Map8 \
		::converters/p5-Unicode-String \
		::devel/p5-Test-Pod \
		::converters/p5-Text-Iconv

.include <bsd.port.mk>
