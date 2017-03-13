# $OpenBSD: Makefile,v 1.14 2017/03/13 15:38:24 fcambus Exp $

COMMENT=		C macros to add, find and delete items from a hash

GH_ACCOUNT=		troydhanson
GH_PROJECT=		uthash
GH_TAGNAME=		v2.0.1

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
PKG_ARCH=		*

PORTHOME=		${WRKDIR}
TEST_TARGET=		run_tests

do-install:
	${INSTALL_DATA} ${WRKSRC}/src/*.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uthash
	${INSTALL_DATA} ${WRKSRC}/doc/u*.txt ${PREFIX}/share/doc/uthash

do-test:
	@cd ${WRKSRC}/tests/ && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${TEST_FLAGS} -f ${MAKE_FILE} \
		${TEST_TARGET}

.include <bsd.port.mk>
