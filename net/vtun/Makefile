# $OpenBSD: Makefile,v 1.3 2000/02/07 08:24:48 brad Exp $

DISTNAME=	vtun-2.0
CATEGORIES=	net
MASTER_SITES=	http://vtun.netpedia.net/

MAINTAINER=	kevlo@openbsd.org

LIB_DEPENDS=	lzo.1.0:${PORTSDIR}/archivers/lzo

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--localstatedir="/var" \
		--with-crypto-headers="/usr/include/openssl" \
		--with-crypto-lib="/usr/lib" \
		--with-lzo-headers="${LOCALBASE}/include" \
		--with-lzo-lib="${LOCALBASE}/lib"

ALL_TARGET=	vtund

post-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
