# $OpenBSD: Makefile,v 1.1.1.1 2001/07/13 15:16:17 avsm Exp $

COMMENT=	"convert Excel and PowerPoint to HTML"

V=		0.2.9.8
DISTNAME=	xlHtml-${V}
PKGNAME=	xlhtml-${V}
CATEGORIES=	converters
NEED_VERSION=	1.402

MASTER_SITES=	http://www.xlhtml.org/
HOMEPAGE=	http://www.xlhtml.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --enable-static ${CONFIGURE_SHARED}

.include <bsd.port.mk>
