# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:48 espie Exp $

COMMENT=	implementation of Gadu-Gadu IM protocol

DISTNAME=	libgadu-1.11.2
EPOCH=		0
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}/files/

SHARED_LIBS=	gadu	6.0

HOMEPAGE=	http://toxygen.net/libgadu/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	pthread z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-tests \
		--without-bind \
		--without-gnutls \
		--without-openssl

NO_TEST=	Yes

.include <bsd.port.mk>
