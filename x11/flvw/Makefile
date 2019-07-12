# $OpenBSD: Makefile,v 1.20 2019/07/12 20:51:11 sthen Exp $

COMMENT=		FLTK Virtual styles, list, table, and complex table Widgets

DISTNAME=		flvw-20000224
PKGNAME=		flvw-1.0
REVISION=		2

CATEGORIES=		x11 devel

HOMEPAGE=		http://flvw.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=flvw/}

EXTRACT_SUFX=		.tgz

BUILD_DEPENDS=		x11/fltk
RUN_DEPENDS=		x11/fltk

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CXXFLAGS="${CXXFLAGS} -DFLTK_1_0_COMPAT -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

TEST_TARGET=		check
TEST_IS_INTERACTIVE= x11

WRKDIST=		${WRKDIR}/flvw
WRKSRC=			${WRKDIST}/1.0

do-test:
	@cd ${WRKBUILD}/test && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

do-install:
	${INSTALL_DATA} ${WRKBUILD}/lib/libflvw.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/FL
	${INSTALL_DATA} ${WRKSRC}/FL/*H ${PREFIX}/include/FL

.include <bsd.port.mk>
