# $OpenBSD: Makefile,v 1.2 2001/04/18 09:46:48 avsm Exp $

COMMENT=	"perl interface to the Sablotron XSLT engine"

DISTNAME=	XML-Sablotron-0.52
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.391
MASTER_SITES=	http://www.gingerall.cz/download/

HOMEPAGE=	http://www.gingerall.cz/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

LIB_DEPENDS=	sablot.52::textproc/sablotron

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
