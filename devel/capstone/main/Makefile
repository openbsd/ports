# $OpenBSD: Makefile,v 1.1 2017/11/06 08:54:28 rpointel Exp $

COMMENT =	multi-platform, multi-architecture disassembly framework

REVISION =	1

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

SHARED_LIBS =	capstone	2.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
