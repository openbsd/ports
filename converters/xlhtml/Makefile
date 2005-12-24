# $OpenBSD: Makefile,v 1.4 2005/12/24 16:11:53 espie Exp $

COMMENT=	"convert Excel and PowerPoint to HTML"

V=		0.2.9.8
DISTNAME=	xlHtml-${V}
PKGNAME=	xlhtml-${V}p0
SHARED_LIBS=	cole	2.1
MODGNU_SHARED_LIBS=	cole ''
CATEGORIES=	converters

MASTER_SITES=	http://www.xlhtml.org/
HOMEPAGE=	http://www.xlhtml.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --enable-static ${CONFIGURE_SHARED}

.include <bsd.port.mk>
