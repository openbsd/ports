# $OpenBSD: Makefile,v 1.20 2016/01/03 08:23:57 ajacoutot Exp $

COMMENT=	implementation of Gadu-Gadu IM protocol

VER=		1.12.1
DISTNAME=	libgadu-${VER}
EPOCH=		0
CATEGORIES=	net
MASTER_SITES=	http://github.com/wojtekka/libgadu/releases/download/${VER}/

SHARED_LIBS=	gadu	7.0

HOMEPAGE=	http://libgadu.net/

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
CONFIGURE_ENV=	ac_cv_prog_DOXYGEN=no

NO_TEST=	Yes

.include <bsd.port.mk>
