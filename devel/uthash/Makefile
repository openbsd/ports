# $OpenBSD: Makefile,v 1.13 2014/03/27 08:47:56 jasper Exp $

COMMENT=		C macros to add, find and delete items from a hash

DISTNAME=		uthash-1.9.7
CATEGORIES=		devel

HOMEPAGE=		http://uthash.sf.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=uthash/}
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
PKG_ARCH=		*

PORTHOME=		${WRKDIR}
TEST_TARGET= 	run_tests

do-install:
	${INSTALL_DATA} ${WRKSRC}/src/*.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uthash/img
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.{css,html} \
		${PREFIX}/share/doc/uthash
	${INSTALL_DATA} ${WRKSRC}/doc/html/img/* ${PREFIX}/share/doc/uthash/img

do-test:
	@cd ${WRKSRC}/tests/ && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${TEST_FLAGS} -f ${MAKE_FILE} \
		${TEST_TARGET}

.include <bsd.port.mk>
