# $OpenBSD: Makefile,v 1.15 2000/08/04 16:51:59 brad Exp $

DISTNAME=	vtun-2.3
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= vtun

LIB_DEPENDS=	lzo.1.0::archivers/lzo

HOMEPAGE=	http://vtun.sourceforge.net/

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--localstatedir="/var" \
		--with-ssl-headers="/usr/include/openssl" \
		--with-lzo-headers="${LOCALBASE}/include" \
		--with-lzo-lib="${LOCALBASE}/lib"

ALL_TARGET=	vtund

DOCS=	FAQ README README.Setup README.Shaper

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vtun
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vtun
	${INSTALL_PROGRAM} ${WRKSRC}/vtund ${PREFIX}/sbin
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/vtun
	${INSTALL_DATA} ${WRKSRC}/vtund.conf ${PREFIX}/share/examples/vtun/vtund.conf-sample
	${INSTALL_MAN} ${WRKSRC}/vtund.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/vtund.8 ${PREFIX}/man/man8
	cd ${PREFIX}/man/man8; ln -fs vtund.8 vtun.8

.include <bsd.port.mk>
