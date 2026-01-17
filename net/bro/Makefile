COMMENT=		network analysis and security monitoring framework

DISTNAME =		zeek-8.1.0

SHARED_LIBS +=		binpac		3.0
SHARED_LIBS +=		broker		10.0
# only used at configure+build time; these libs aren't installed
SHARED_LIBS +=		caf_core	4.1

CATEGORIES=		net security

HOMEPAGE=		https://www.zeek.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += c cares crypto m maxminddb pcap ssl z zmq

SITES =			https://download.zeek.org/

MODULES =		devel/cmake \
			lang/python

# c++20
COMPILER =		base-clang ports-gcc
# XXX src/modp_numtoa.c:174:30: error: use of undeclared identifier 'DBL_DECIMAL_DIG'
CFLAGS +=		-DDBL_DECIMAL_DIG=__DBL_DECIMAL_DIG__

MODPY_ADJ_FILES =	auxil/package-manager/zkg \
			auxil/zeek-client/zeek-client \
			auxil/zeekctl/auxil/trace-summary/trace-summary \
			auxil/zeekctl/bin/stats-to-csv \
			auxil/zeekctl/bin/zeekctl.in

BUILD_DEPENDS =		databases/libhiredis \
			devel/bison \
			devel/swig \
			net/cppzmq

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			net/libcares \
			net/libmaxminddb \
			net/zeromq

RUN_DEPENDS =		devel/py-gitpython \
			devel/py-semantic-version \
			net/libmaxminddb,-asn \
			net/libmaxminddb,-city \
			net/libmaxminddb,-db

# share/zeekctl/scripts
BUILD_DEPENDS +=	shells/bash
RUN_DEPENDS +=		misc/findutils \
			shells/bash

# share/zeek/base/utils/active-http.zeek executes curl(1)
RUN_DEPENDS +=		net/curl

# Fix undefined reference to __atomic_load_8
.if ${MACHINE_ARCH} == "hppa"
MODCMAKE_LDFLAGS +=	"-latomic"
WANTLIB +=		atomic
.endif

MODCMAKE_LDFLAGS +=	-L${LOCALBASE}/lib -lcares \
	   		-Wl,-rpath ${LOCALBASE}/lib
CXXFLAGS +=		-I${LOCALBASE}/include

# Pass cmake/CheckNameserCompat.cmake for src/3rdparty/zeek_inet_ntop.c 
.for _macro in IN6ADDRSZ INT16SZ
CFLAGS +=		-DNS_${_macro}=${_macro}
.endfor
# src/cluster/websocket/auxil/IXWebSocket/ixwebsocket/IXDNSLookup.cpp
CXXFLAGS +=		-DAI_NUMERICSERV=NI_NUMERICSERV

# XXX Some files don't see PRIu64 et al. despite the right headers being there
CXXFLAGS +=		-include cinttypes

# XXX our <arpa/nameser.h> is too old
.for rr in A AAAA PTR TXT
CXXFLAGS +=		-Dns_t_${rr:L}=T_${rr}
.endfor
# copied from libbind
CXXFLAGS +=		-DNS_HFIXEDSZ=12 \
			-DNS_QFIXEDSZ=4 \
			-DNS_RRFIXEDSZ=10

CONFIGURE_ARGS =	-DBINARY_PACKAGING_MODE=ON \
			-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DINSTALL_BTEST=OFF \
			-DINSTALL_BTEST_PCAPS=OFF \
			-DZEEK_ETC_INSTALL_DIR=${SYSCONFDIR}/zeek \
			-DZEEK_LOCAL_STATE_DIR=${LOCALSTATEDIR} \
			-DZEEK_LOG_DIR=${LOCALSTATEDIR}/log/zeek \
			-DZEEK_MAN_INSTALL_PATH=${PREFIX}/man \
			-DZEEK_SPOOL_DIR=${LOCALSTATEDIR}/spool/zeek \
			-DZEEK_STATE_DIR=${LOCALSTATEDIR}/db

# Our modules only pass {PYTHON,Python3}_*, perhaps newer releases take them.
CONFIGURE_ARGS +=	-DPython_EXECUTABLE=${MODPY_BIN}

# XXX CMake Error at auxil/spicy/spicy/cmake/Util.cmake:85 (message):
# Need Flex version >= 2.6, found 2.5.39
CONFIGURE_ARGS +=	-DDISABLE_SPICY=TRUE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}/etc/zeek ${PREFIX}/share/examples/zeek
	rm -rf ${WRKINST}/var/{log,spool}/zeek ${PREFIX}/var/
	mv ${PREFIX}/share/zeek/site/ ${PREFIX}/share/examples/zeek/
	cd ${PREFIX}/share/zeek && ln -sf ${SYSCONFDIR}/zeek/site
	${MODPY_COMPILEALL} ${PREFIX}/lib/zeek/python
	rm -rf ${PREFIX}/share/btest/

# handled by exec-add / exec-delete; symlink changes according to spooldir
	rm ${PREFIX}/share/zeekctl/scripts/zeekctl-config.sh

.include <bsd.port.mk>
