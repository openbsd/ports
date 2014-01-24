# $OpenBSD: Makefile,v 1.1.1.1 2014/01/24 22:47:46 benoit Exp $

COMMENT =	multi-platform, multi-architecture disassembly framework

DISTNAME =	capstone-2.0
CATEGORIES =	devel
HOMEPAGE =	http://www.capstone-engine.org/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

SHARED_LIBS =	capstone	0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES = 		http://capstone-engine.org/download/2.0/

USE_GMAKE =		Yes
FAKE_FLAGS =		PREFIX=${PREFIX}
MAKE_ENV =		LIBcapstone_VERSION=${LIBcapstone_VERSION} \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_LIBRARY="${INSTALL_DATA}"

do-test:
	cd ${WRKBUILD}/tests; \
	set -- $$(env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
	    -f ${MAKE_FILE} -p -n | grep ^SOURCES); \
	echo "$$@"; \
	shift 2; for t; do \
		t=$${t%.c}; LD_LIBRARY_PATH=`pwd` ./$$t; \
	done

.include <bsd.port.mk>
