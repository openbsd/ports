# $OpenBSD: Makefile,v 1.24 2006/08/03 23:55:11 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"fast XSLT module for perl"

VERSION=	1.50
DISTNAME=	XML-LibXSLT-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

HOMEPAGE=	http://www.axkit.org/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	:p5-XML-LibXML->=0.94:textproc/p5-XML-LibXML
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	xml2.>=6::textproc/libxml \
		xslt.>=1,exslt.>=7::textproc/libxslt

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		iconv m z 

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
