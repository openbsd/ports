# $OpenBSD: Makefile,v 1.13 2004/06/26 07:35:10 xsa Exp $

COMMENT=	"perl module to perform XSLT transformations"

DISTNAME=	XML-XSLT-0.32
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

RUN_DEPENDS=	:p5-XML-Parser->=2.23:textproc/p5-XML-Parser \
		:p5-XML-DOM->=1.25:textproc/p5-XML-DOM
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
