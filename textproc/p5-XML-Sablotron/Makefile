# $OpenBSD: Makefile,v 1.6 2002/03/21 21:25:53 espie Exp $

COMMENT=	"perl interface to the Sablotron XSLT engine"

DISTNAME=	XML-Sablotron-0.65
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.515
MASTER_SITES=	http://www.gingerall.cz/download/

HOMEPAGE=	http://www.gingerall.cz/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

LIB_DEPENDS=	sablot.65::textproc/sablotron

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=  EXPATLIBPATH="${LOCALBASE}/lib" EXPATINCPATH="${LOCALBASE}/include" SABLOTLIBPATH="${LOCALBASE}/lib" SABLOTINCPATH="${LOCALBASE}/include"

.include <bsd.port.mk>
