# $OpenBSD: Makefile,v 1.5 2003/11/15 15:12:54 sturm Exp $

COMMENT=	"perl module collection for working with XML"

VERSION=	0.07
DISTNAME=	libxml-perl-${VERSION}
PKGNAME=	p5-Libxml-${VERSION}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	:p5-XML-Parser->=2.19:textproc/p5-XML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
