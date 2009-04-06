# $OpenBSD: Makefile,v 1.5 2009/04/06 10:46:49 sthen Exp $

COMMENT=	implementation of Gadu-Gadu IM protocol

DISTNAME=	libgadu-1.8.2
PKGNAME=	${DISTNAME}v0
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}files/

SHARED_LIBS=	gadu	4.0

HOMEPAGE=	http://toxygen.net/libgadu/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-bind \
		--without-openssl

NO_REGRESS=	Yes

.include <bsd.port.mk>
