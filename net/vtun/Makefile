# $OpenBSD: Makefile,v 1.13 2000/07/10 06:06:27 kevlo Exp $

DISTNAME=	vtun-2.3
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	http://vtun.sourceforge.net/


MAINTAINER=	kevlo@openbsd.org

LIB_DEPENDS=	lzo.1.0::archivers/lzo

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=	--localstatedir="/var" \
		--with-ssl-headers="/usr/include/openssl" \
		--with-ssl-lib="/usr/lib" \
		--with-lzo-headers="${LOCALBASE}/include" \
		--with-lzo-lib="${LOCALBASE}/lib"

ALL_TARGET=	vtund

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vtun
	${INSTALL_PROGRAM} ${WRKSRC}/vtund ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/README.Setup ${PREFIX}/lib/vtun
	${INSTALL_DATA} ${WRKSRC}/vtund.conf ${PREFIX}/lib/vtun/vtund.conf-sample
	${INSTALL_MAN}  ${WRKSRC}/vtund.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN}	${WRKSRC}/vtund.8 ${PREFIX}/man/man8
	cd ${PREFIX}/man/man8; ln -fs vtund.8 vtun.8

.include <bsd.port.mk>
