# $OpenBSD: Makefile,v 1.40 2015/03/20 10:50:39 kirby Exp $

SHARED_LIBS=	polarssl 1.0

COMMENT=	secure webserver
DISTNAME =	hiawatha-9.2
REVISION =	0
CATEGORIES=	www net

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
