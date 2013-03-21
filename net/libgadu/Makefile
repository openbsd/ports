# $OpenBSD: Makefile,v 1.15 2013/03/21 08:46:34 ajacoutot Exp $

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

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-tests \
		--without-bind \
		--without-gnutls \
		--without-openssl

NO_TEST=	Yes

.include <bsd.port.mk>
