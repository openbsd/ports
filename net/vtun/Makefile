# $OpenBSD: Makefile,v 1.5 2000/03/13 02:37:02 kevlo Exp $

DISTNAME=	vtun-2.0
CATEGORIES=	net
NEED_VERSION=	1.223
MASTER_SITES=	http://vtun.netpedia.net/

MAINTAINER=	kevlo@openbsd.org

LIB_DEPENDS=	lzo.1.0:archivers/lzo

PERMIT_PACKAGE_CDROM= Yes
PERMIT_PACKAGE_FTP=   Yes
PERMIT_DISTFILES_CDROM=       Yes
PERMIT_DISTFILES_FTP= Yes

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
