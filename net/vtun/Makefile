# $OpenBSD: Makefile,v 1.23 2002/05/15 17:42:25 espie Exp $

COMMENT=	"virtual tunnels over TCP/IP networks with traffic shaping"

DISTNAME=	vtun-2.5
CATEGORIES=	net
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vtun/}

HOMEPAGE=	http://vtun.sourceforge.net/

LIB_DEPENDS=	lzo.1.0::archivers/lzo

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LOG_DIR=	/var
SUBST_VARS=	LOG_DIR

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--localstatedir="${LOG_DIR}" \
		--with-ssl-headers="/usr/include/openssl" \
		--with-lzo-headers="${LOCALBASE}/include" \
		--with-lzo-lib="${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/vtun

DOCS=	FAQ README README.Setup README.Shaper

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vtun
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vtun
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/vtun
	${INSTALL_DATA} ${WRKSRC}/vtund.conf ${PREFIX}/share/examples/vtun/vtund.conf-sample

.include <bsd.port.mk>
