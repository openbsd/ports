# $OpenBSD: Makefile,v 1.7 2000/03/13 07:48:51 brad Exp $

DISTNAME=	vtun-2.0
CATEGORIES=	net
MASTER_SITES=	http://vtun.netpedia.net/ \
		http://vtun.saol.com/

NEED_VERSION=	1.223

MAINTAINER=	kevlo@openbsd.org

LIB_DEPENDS=	lzo.1.0:archivers/lzo

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' \
		--sysconfdir='$${DESTDIR}/etc' \
		--localstatedir="/var" \
		--with-crypto-headers="/usr/include/openssl" \
		--with-crypto-lib="/usr/lib" \
		--with-lzo-headers="${LOCALBASE}/include" \
		--with-lzo-lib="${LOCALBASE}/lib"

ALL_TARGET=	vtund

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vtun
	${INSTALL_PROGRAM} ${WRKSRC}/vtund ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/vtund.conf ${PREFIX}/lib/vtun/vtund.conf-sample
	${INSTALL_MAN}	${WRKSRC}/vtund.8 ${PREFIX}/man/man8
	cd ${PREFIX}/man/man8; ln -fs vtund.8 vtun.8

.include <bsd.port.mk>
