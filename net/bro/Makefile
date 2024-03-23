PORTROACH=		skipv:6.1.0,6.1.1,6.2.0

BROKEN-powerpc64 =	vec_mule and vec_rl calls are ambiguous in highwayhash

COMMENT=		network analysis and security monitoring framework

V=			6.0.3
DISTNAME=		zeek-${V}

SHARED_LIBS +=	binpac                    3.0
SHARED_LIBS +=  broccoli                  10.0
SHARED_LIBS +=  broker                    4.0

# only used at configure+build time; these libs aren't installed
SHARED_LIBS +=  caf_core                  4.0

CATEGORIES=		net security

HOMEPAGE=		https://www.zeek.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += c m maxminddb pcap pthread z
WANTLIB += lib/eopenssl11/crypto lib/eopenssl11/ssl lib/libbind/bind

SITES=			https://download.zeek.org/ \
			https://old.zeek.org/downloads/

FIX_EXTRACT_PERMISSIONS=Yes

MODULES=		lang/python

# c++11
COMPILER=		base-clang ports-gcc
# XXX src/modp_numtoa.c:174:30: error: use of undeclared identifier 'DBL_DECIMAL_DIG'
CFLAGS +=		-DDBL_DECIMAL_DIG=__DBL_DECIMAL_DIG__
# XXX sparc64 and ports-clang don't go well together:
# /tmp/sqlite3-1f089a.s:544060: Error: operation combines symbols in different segments
# clang-13: error: assembler command failed with exit code 1 (use -v to see invocation)
#ONLY_FOR_ARCHS=	${CLANG_ARCHS}

MODPY_ADJ_FILES=	auxil/btest/btest \
			auxil/zeekctl/bin/stats-to-csv \
			auxil/zeekctl/bin/zeekctl.in \
			auxil/zeekctl/auxil/trace-summary/trace-summary

BUILD_DEPENDS=		devel/bison \
			devel/cmake \
			devel/swig

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			net/libbind \
			net/libmaxminddb \
			security/openssl/1.1

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

MODCMAKE_USE_SHARED_LIBS = No

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

# XXX CMake Error at auxil/spicy/spicy/cmake/Util.cmake:85 (message):
# Need Flex version >= 2.6, found 2.5.39
CONFIGURE_ARGS +=	--disable-spicy

pre-configure:
	${SUBST_CMD} ${WRKSRC}/auxil/broker/CMakeLists.txt \
		${WRKSRC}/auxil/binpac/lib/CMakeLists.txt \
		${WRKSRC}/auxil/broker/caf/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}/etc/zeek ${PREFIX}/share/examples/zeek
	rm -rf ${WRKINST}/var/{log,spool}/zeek ${PREFIX}/var/
	mv ${PREFIX}/share/zeek/site/ ${PREFIX}/share/examples/zeek/
	cd ${PREFIX}/share/zeek && ln -sf ${SYSCONFDIR}/zeek/site
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/zeek/python

# handled by exec-add / exec-delete; symlink changes according to spooldir
	rm ${PREFIX}/share/zeekctl/scripts/zeekctl-config.sh

# XXX InstallSymlink does not do the right think for that particular file
	ln -sf ${TRUEPREFIX}/bin/zeek-wrapper ${PREFIX}/bin/bro

.include <bsd.port.mk>
