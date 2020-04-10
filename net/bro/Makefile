# $OpenBSD: Makefile,v 1.61 2020/04/10 15:00:55 cwen Exp $

COMMENT=		network analysis and security monitoring framework

V=			3.1.1
DISTNAME=		zeek-${V}

SHARED_LIBS +=	binpac                    0.0 # 0.54
SHARED_LIBS +=  broccoli                  7.0 # 5.1
SHARED_LIBS +=  broker                    1.0 # XXX see patch-aux_broker_CMakeLists_txt
SHARED_LIBS +=  caf_core                  1.0 # 0.54
SHARED_LIBS +=  caf_io                    1.0 # 0.54
SHARED_LIBS +=  caf_openssl               1.0 # 0.54

CATEGORIES=		net security

HOMEPAGE=		https://www.zeek.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto m maxminddb pcap pthread ssl z
WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} lib/libbind/bind

MASTER_SITES=		https://old.zeek.org/downloads/

MODULES=		lang/python

# c++11
COMPILER =		base-clang ports-gcc

MODPY_ADJ_FILES=	aux/broctl/bin/stats-to-csv \
			aux/broctl/bin/zeekctl.in \
			aux/btest/btest \
			aux/broctl/aux/trace-summary/trace-summary

BUILD_DEPENDS=		devel/bison \
			devel/cmake \
			devel/swig

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			net/libbind \
			net/libmaxminddb

RUN_DEPENDS=		net/libmaxminddb,-asn \
			net/libmaxminddb,-city \
			net/libmaxminddb,-db

# XXX the bundled sqlite seems to pick up ICU4C if present and will error out if
# it gets junked during the build; I could not find a proper way to disable it
# make: don't know how to make /usr/local/include/unicode/bytestream.h
# (prerequisite of: src/CMakeFiles/broker.dir/3rdparty/sqlite3.c.o)
BUILD_DEPENDS +=	textproc/icu4c

# share/zeekctl/scripts
BUILD_DEPENDS +=	shells/bash
RUN_DEPENDS +=		misc/findutils \
			shells/bash

# share/zeek/base/utils/active-http.bro
RUN_DEPENDS +=		net/curl

CONFIGURE_STYLE=	simple

# Fix undefined reference to __atomic_load_8
.if ${MACHINE_ARCH} == "hppa"
LDFLAGS +=		"-latomic"
WANTLIB +=		atomic
.endif

CONFIGURE_ENV=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib/libbind \
				-lbind -Wl,-rpath ${LOCALBASE}/lib/libbind"

CONFIGURE_ARGS=		--prefix=${PREFIX} \
			--mandir=${PREFIX}/man \
			--conf-files-dir=${SYSCONFDIR}/zeek \
			--localstatedir=${LOCALSTATEDIR} \
			--spooldir=${LOCALSTATEDIR}/spool/zeek \
			--logdir=${LOCALSTATEDIR}/log/zeek \
			--with-python=${MODPY_BIN} \
			--binary-package

pre-configure:
	${SUBST_CMD} ${WRKSRC}/aux/broker/CMakeLists.txt \
		${WRKSRC}/aux/binpac/lib/CMakeLists.txt \
		${WRKSRC}/aux/broker/3rdparty/caf/libcaf_{core,io,openssl}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}/etc/zeek ${PREFIX}/share/examples/zeek
	rm -rf ${WRKINST}/var/{log,spool}/zeek
	mv ${PREFIX}/share/zeek/site/ ${PREFIX}/share/examples/zeek/
	cd ${PREFIX}/share/zeek && ln -sf ${SYSCONFDIR}/zeek/site
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/zeekctl

# handled by exec-add / exec-delete; symlink changes according to spooldir
	rm ${PREFIX}/share/zeekctl/scripts/zeekctl-config.sh

# XXX InstallSymlink does not do the right think for that particular file
	ln -sf ${TRUEPREFIX}/bin/zeek-wrapper ${PREFIX}/bin/bro

.include <bsd.port.mk>
