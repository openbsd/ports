# $OpenBSD: Makefile,v 1.1.1.1 2000/02/06 15:16:07 kevlo Exp $

DISTNAME=       vtun-2.0
CATEGORIES=     net

MASTER_SITES=   http://vtun.netpedia.net/
MAINTAINER=	kevlo@openbsd.org

LIB_DEPENDS=	lzo.1.0:${PORTSDIR}/archivers/lzo
GNU_CONFIGURE=  YES
CONFIGURE_ARGS+=--localstatedir=/var \
		--with-crypto-headers=/usr/include/openssl \
                --with-crypto-lib=/usr/lib \
                --with-lzo-headers=${LOCALBASE}/include \
                --with-lzo-lib=${LOCALBASE}/lib

ALL_TARGET=     vtund

.include <bsd.port.mk>
