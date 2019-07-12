# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:05 sthen Exp $

COMMENT =	multi-platform, multi-architecture disassembly framework

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

SHARED_LIBS =	capstone	${_SHLIB_VERSION}

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += 		c

USE_GMAKE =		Yes

FAKE_FLAGS =		PREFIX=${PREFIX}
MAKE_ENV =		LIBcapstone_VERSION=${LIBcapstone_VERSION} \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			V=1

do-test:
	cd ${WRKBUILD}/tests; \
	set -- $$(env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
	    -f ${MAKE_FILE} -p -n | grep ^SOURCES); \
	echo "$$@"; \
	shift 2; for t; do \
		t=$${t%.c}; LD_LIBRARY_PATH=`pwd` \
		LD_PRELOAD=libcapstone.so.${LIBcapstone_VERSION} ./$$t; \
	done

.include <bsd.port.mk>
