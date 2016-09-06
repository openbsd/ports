# $OpenBSD: Makefile,v 1.20 2016/09/06 16:12:57 ajacoutot Exp $

COMMENT=		network analysis and security monitoring framework

DISTNAME=		bro-2.4.1
REVISION=		2

SHARED_LIBS +=  broccoli                  5.1 # 5.1

CATEGORIES=		net security

HOMEPAGE=		https://www.bro.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += GeoIP c crypto m pcap pthread ssl stdc++ z
WANTLIB += ${MODPY_WANTLIB} lib/libbind/bind

MASTER_SITES=		https://www.bro.org/downloads/

MODULES=		lang/python

MODPY_ADJ_FILES=	aux/broctl/bin/broctl.in \
			aux/broctl/bin/stats-to-csv \
			aux/btest/btest \
			aux/broctl/aux/trace-summary/trace-summary

BUILD_DEPENDS=		devel/bison \
			devel/cmake \
			devel/swig

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			net/GeoIP \
			net/libbind

RUN_DEPENDS=		net/GeoIP,-asn \
			net/GeoIP,-city

# share/broctl/scripts
BUILD_DEPENDS +=	shells/bash
RUN_DEPENDS +=		shells/bash

# share/bro/base/utils/active-http.bro
RUN_DEPENDS +=		net/curl

CONFIGURE_STYLE=	simple

CONFIGURE_ARGS=		--prefix=${PREFIX} \
			--conf-files-dir=${SYSCONFDIR}/bro \
			--localstatedir=${LOCALSTATEDIR} \
			--spooldir=${LOCALSTATEDIR}/spool/bro \
			--logdir=${LOCALSTATEDIR}/log/bro \
			--python-install-dir=${PREFIX}/lib/python${MODPY_VERSION}/site-packages \
			--with-python=${MODPY_BIN} \
			--binary-package

SUBST_VARS=		MODPY_SITEPKG

pre-configure:
	${SUBST_CMD} ${WRKSRC}/aux/broctl/BroControl/options.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}/etc/bro ${PREFIX}/share/examples/bro
	rm -rf ${WRKINST}/var/{log,spool}/bro
	mv ${PREFIX}/lib/broctl/BroControl \
		${WRKINST}/${MODPY_SITEPKG}/
	mv ${PREFIX}/lib/broctl/plugins \
		${WRKINST}/${MODPY_SITEPKG}/BroControl/
	rm ${WRKINST}/${MODPY_SITEPKG}/BroControl/options.py.{beforesubst,orig}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}/${MODPY_SITEPKG}

.include <bsd.port.mk>
