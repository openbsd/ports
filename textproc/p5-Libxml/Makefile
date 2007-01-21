# $OpenBSD: Makefile,v 1.7 2007/01/21 21:46:20 simon Exp $

COMMENT=	"perl module collection for working with XML"

MODULES=	cpan
VERSION=	0.08
DISTNAME=	libxml-perl-${VERSION}
PKGNAME=	p5-Libxml-${VERSION}p0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	:p5-XML-Parser->=2.19:textproc/p5-XML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
