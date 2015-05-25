# $OpenBSD: Makefile,v 1.42 2015/05/25 09:24:31 ajacoutot Exp $

COMMENT=	secure webserver
DISTNAME =	hiawatha-9.13
CATEGORIES=	www net

SHARED_LIBS +=	mbedtls                   0.0 # 1.3

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
