# $OpenBSD: Makefile,v 1.16 2014/10/28 01:09:22 brad Exp $

COMMENT=	implementation of Gadu-Gadu IM protocol

DISTNAME=	libgadu-1.12.0
EPOCH=		0
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}/files/

SHARED_LIBS=	gadu	7.0

HOMEPAGE=	http://toxygen.net/libgadu/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	pthread z

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-tests \
		--without-bind \
		--without-gnutls \
		--without-openssl

NO_TEST=	Yes

.include <bsd.port.mk>
