# $OpenBSD: Makefile,v 1.7 2002/05/16 03:52:29 avsm Exp $

COMMENT=	"perl interface to the Sablotron XSLT engine"

DISTNAME=	XML-Sablotron-0.90
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.529
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

HOMEPAGE=	http://www.gingerall.cz/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

LIB_DEPENDS=	sablot.90::textproc/sablotron

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=  EXPATLIBPATH="${LOCALBASE}/lib" EXPATINCPATH="${LOCALBASE}/include" SABLOTLIBPATH="${LOCALBASE}/lib" SABLOTINCPATH="${LOCALBASE}/include"

.include <bsd.port.mk>
