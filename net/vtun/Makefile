# $OpenBSD: Makefile,v 1.16 2000/09/18 14:52:42 brad Exp $

DISTNAME=	vtun-2.3
CATEGORIES=	net
NEED_VERSION=	1.320
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= vtun

HOMEPAGE=	http://vtun.sourceforge.net/

LIB_DEPENDS=	lzo.1.0::archivers/lzo

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--localstatedir="/var" \
		--with-ssl-headers="/usr/include/openssl" \
		--with-lzo-headers="${LOCALBASE}/include" \
		--with-lzo-lib="${LOCALBASE}/lib"

DOCS=	FAQ README README.Setup README.Shaper

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vtun
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vtun
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/vtun
	${INSTALL_DATA} ${WRKSRC}/vtund.conf ${PREFIX}/share/examples/vtun/vtund.conf-sample

.include <bsd.port.mk>
