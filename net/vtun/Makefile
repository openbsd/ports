# $OpenBSD: Makefile,v 1.28 2004/09/17 08:02:12 espie Exp $

BROKEN=		"insecure due to protocol flaws"

COMMENT=	"virtual tunnels over TCP/IP networks with traffic shaping"

DISTNAME=	vtun-2.6
CATEGORIES=	net
HOMEPAGE=	http://vtun.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vtun/}

LIB_DEPENDS=	lzo.1::archivers/lzo

LOG_DIR=	/var
SUBST_VARS=	LOG_DIR

CONFIGURE_STYLE= autoconf no-autoheader
AUTOCONF_VERSION= 2.13
CONFIGURE_ARGS=	--localstatedir="${LOG_DIR}" \
		--with-ssl-headers="/usr/include/openssl" \
		--with-lzo-headers="${LOCALBASE}/include" \
		--with-lzo-lib="${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/vtun
ALL_TARGET=	vtund

NO_REGRESS=	Yes

DOCS=	FAQ README README.Setup README.Shaper

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vtun
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vtun
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/vtun
	${INSTALL_DATA} ${WRKSRC}/vtund.conf \
		${PREFIX}/share/examples/vtun/vtund.conf-sample

.include <bsd.port.mk>
