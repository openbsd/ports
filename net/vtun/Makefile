# $OpenBSD: Makefile,v 1.4 2000/03/05 18:30:39 espie Exp $

DISTNAME=	vtun-2.0
CATEGORIES=	net
NEED_VERSION=	1.223
MASTER_SITES=	http://vtun.netpedia.net/

MAINTAINER=	kevlo@openbsd.org

LIB_DEPENDS=	lzo.1.0:archivers/lzo

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+=--localstatedir="/var" \
		--with-crypto-headers="/usr/include/openssl" \
		--with-crypto-lib="/usr/lib" \
		--with-lzo-headers="${LOCALBASE}/include" \
		--with-lzo-lib="${LOCALBASE}/lib"

ALL_TARGET=	vtund

post-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
