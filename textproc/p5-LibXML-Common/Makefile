# $OpenBSD: Makefile,v 1.2 2003/06/18 15:57:43 shell Exp $

COMMENT=	"perl interface for several perl XML modules"

VERSION=	0.13
DISTNAME=	XML-LibXML-Common-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

LIB_DEPENDS=	xml2.7::textproc/libxml

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
