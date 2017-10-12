# $OpenBSD: Makefile,v 1.40 2017/10/12 17:53:52 ajacoutot Exp $

COMMENT=		network analysis and security monitoring framework

DISTNAME=		bro-2.5.1
REVISION=		1

SHARED_LIBS +=  broccoli                  5.1 # 5.1

CATEGORIES=		net security

HOMEPAGE=		https://www.bro.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += GeoIP c crypto m pcap pthread ssl z
WANTLIB += ${MODPY_WANTLIB} lib/libbind/bind ${COMPILER_LIBCXX}

MASTER_SITES=		https://www.bro.org/downloads/

MODULES=		lang/python

# c++11
COMPILER =		gcc

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

# XXX the bundled sqlite seems to pick up ICU4C if present and will error out if
# it gets junked during the build; I could not find a proper way to disable it
# make: don't know how to make /usr/local/include/unicode/bytestream.h
# (prerequisite of: src/CMakeFiles/bro.dir/3rdparty/sqlite3.c.o)
BUILD_DEPENDS +=	textproc/icu4c

# share/broctl/scripts
BUILD_DEPENDS +=	shells/bash
RUN_DEPENDS +=		misc/findutils \
			shells/bash

# share/bro/base/utils/active-http.bro
RUN_DEPENDS +=		net/curl

CONFIGURE_STYLE=	simple

CONFIGURE_ENV=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib/libbind \
				-lbind -Wl,-rpath ${LOCALBASE}/lib/libbind"

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
	mv ${PREFIX}/share/bro/site/ ${PREFIX}/share/examples/bro/
	cd ${PREFIX}/share/bro && ln -sf ${SYSCONFDIR}/bro/site
	mv ${PREFIX}/lib/broctl/BroControl \
		${WRKINST}/${MODPY_SITEPKG}/
	mv ${PREFIX}/lib/broctl/plugins \
		${WRKINST}/${MODPY_SITEPKG}/BroControl/
	rm ${WRKINST}/${MODPY_SITEPKG}/BroControl/options.py.{beforesubst,orig}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}/${MODPY_SITEPKG}

# handled by exec-add / exec-delete ; symlink changes according to spooldir
	rm ${PREFIX}/share/broctl/scripts/broctl-config.sh

.include <bsd.port.mk>
