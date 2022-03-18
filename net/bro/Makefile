PORTROACH=		skipv:4.1.0,4.1.1,4.2.0

BROKEN-powerpc64 =	vec_mule and vec_rl calls are ambiguous in highwayhash

COMMENT=		network analysis and security monitoring framework

V=			4.0.5
DISTNAME=		zeek-${V}

SHARED_LIBS +=	binpac                    2.0
SHARED_LIBS +=  broccoli                  9.0
SHARED_LIBS +=  broker                    3.0
SHARED_LIBS +=  caf_core                  3.0
SHARED_LIBS +=  caf_io                    3.0
SHARED_LIBS +=  caf_openssl               3.0

CATEGORIES=		net security

HOMEPAGE=		https://www.zeek.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto m maxminddb pcap pthread ssl z
WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} lib/libbind/bind

MASTER_SITES=		https://download.zeek.org/ \
			https://old.zeek.org/downloads/

FIX_EXTRACT_PERMISSIONS=Yes

MODULES=		lang/python

# c++11
#COMPILER=		base-clang ports-gcc
# XXX src/modp_numtoa.c:174:30: error: use of undeclared identifier 'DBL_DECIMAL_DIG'
COMPILER=		ports-clang
# XXX sparc64 and ports-clang don't go well together:
# /tmp/sqlite3-1f089a.s:544060: Error: operation combines symbols in different segments
# clang-13: error: assembler command failed with exit code 1 (use -v to see invocation)
ONLY_FOR_ARCHS=		${CLANG_ARCHS}

MODPY_ADJ_FILES=	auxil/btest/btest \
			auxil/zeekctl/bin/stats-to-csv \
			auxil/zeekctl/bin/zeekctl.in \
			auxil/zeekctl/auxil/trace-summary/trace-summary

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

MODCMAKE_USE_SAHRED_LIBS = No

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
	${SUBST_CMD} ${WRKSRC}/auxil/broker/CMakeLists.txt \
		${WRKSRC}/auxil/binpac/lib/CMakeLists.txt \
		${WRKSRC}/auxil/broker/caf/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}/etc/zeek ${PREFIX}/share/examples/zeek
	rm -rf ${WRKINST}/var/{log,spool}/zeek
	mv ${PREFIX}/share/zeek/site/ ${PREFIX}/share/examples/zeek/
	cd ${PREFIX}/share/zeek && ln -sf ${SYSCONFDIR}/zeek/site
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/zeek/python

# handled by exec-add / exec-delete; symlink changes according to spooldir
	rm ${PREFIX}/share/zeekctl/scripts/zeekctl-config.sh

# XXX InstallSymlink does not do the right think for that particular file
	ln -sf ${TRUEPREFIX}/bin/zeek-wrapper ${PREFIX}/bin/bro

.include <bsd.port.mk>
