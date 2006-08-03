# $OpenBSD: Makefile,v 1.6 2006/08/03 23:55:11 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl interface for several perl XML modules"

VERSION=	0.13
DISTNAME=	XML-LibXML-Common-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

LIB_DEPENDS=	xml2.>=7::textproc/libxml

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		iconv m z 

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
