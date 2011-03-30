# $OpenBSD: Makefile,v 1.10 2011/03/30 09:33:56 jasper Exp $

COMMENT=	implementation of Gadu-Gadu IM protocol

DISTNAME=	libgadu-1.10.1
EPOCH =		0
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}/files/

SHARED_LIBS=	gadu	5.1

HOMEPAGE=	http://toxygen.net/libgadu/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-silent-rules \
		--without-bind \
		--without-gnutls \
		--without-openssl

NO_REGRESS=	Yes

.include <bsd.port.mk>
