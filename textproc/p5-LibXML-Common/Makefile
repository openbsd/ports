# $OpenBSD: Makefile,v 1.3 2003/11/15 15:12:53 sturm Exp $

COMMENT=	"perl interface for several perl XML modules"

VERSION=	0.13
DISTNAME=	XML-LibXML-Common-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

LIB_DEPENDS=	xml2.7::textproc/libxml

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
