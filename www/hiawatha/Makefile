# $OpenBSD: Makefile,v 1.43 2015/08/14 09:59:06 ajacoutot Exp $

COMMENT=	secure webserver
DISTNAME =	hiawatha-9.14
CATEGORIES=	www net

SHARED_LIBS +=	mbedcrypto                0.0 # 2.0
SHARED_LIBS +=	mbedtls                   1.0 # 1.3
SHARED_LIBS +=	mbedx509                  0.0 # 2.0

HOMEPAGE=	http://www.hiawatha-webserver.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	devel/cmake

WANTLIB += c pthread xml2 z xslt

LIB_DEPENDS=	textproc/libxslt

CONFIGURE_ARGS=	-DWEBROOT_DIR="/var/hiawatha" \
		-DWORK_DIR="/var/db/hiawatha" \
		-DCONFIG_DIR="${SYSCONFDIR}/hiawatha" \
		-DLOG_DIR="/var/log/hiawatha" \
		-DCMAKE_INSTALL_MANDIR="${PREFIX}/man" \
		-DENABLE_XSLT=ON \
		-DPID_DIR="/var/run"

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config/hiawatha.conf.in \
		${WRKSRC}/config/cgi-wrapper.conf \
		${WRKSRC}/man/hiawatha.1.in

post-install:
	mv ${WRKINST}${SYSCONFDIR}/hiawatha ${PREFIX}/share/examples/hiawatha
	mv ${WRKINST}/var/hiawatha/index.html ${PREFIX}/share/examples/hiawatha/
	rm -r ${WRKINST}/var

.include <bsd.port.mk>
