# $OpenBSD: Makefile,v 1.6 2019/12/18 07:42:27 bentley Exp $

COMMENT =	Parallax Static Timing Analyzer

# use version number from git log
DISTNAME =	opensta-2.0.12.20190329
REVISION =	0

CATEGORIES =	cad

GH_ACCOUNT =	abk-openroad
GH_PROJECT =	OpenSTA
GH_COMMIT =	ed3ad4fb3012feb53328a80df6ad01efd477f891

MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} ${MODTCL_WANTLIB} c m z cudd

# C++11
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		lang/tcl

MODTCL_VERSION =	8.6

LIB_DEPENDS =	${MODTCL_LIB_DEPENDS} \
		devel/cudd

BUILD_DEPENDS =	devel/bison \
		devel/swig \
		${MODTCL_BUILD_DEPENDS}

CONFIGURE_ARGS = -DTCL_HEADER=${MODTCL_INCDIR}/tcl.h \
		 -DCUDD=${LOCALBASE}

NO_TEST =	Yes

pre-configure:
	cd ${WRKSRC}/etc && ${MODTCL_TCLSH_ADJ} TclEncode.tcl SwigCleanup.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opensta
	${INSTALL_DATA} ${WRKSRC}/doc/OpenSTA.pdf ${PREFIX}/share/doc/opensta
	${INSTALL_DATA} ${WRKSRC}/doc/ChangeLog.txt ${PREFIX}/share/doc/opensta
	${INSTALL_DATA} ${WRKSRC}/doc/StaApi.txt ${PREFIX}/share/doc/opensta

.include <bsd.port.mk>
