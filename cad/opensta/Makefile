# $OpenBSD: Makefile,v 1.7 2020/03/14 06:42:05 rsadowski Exp $

COMMENT =	Parallax Static Timing Analyzer

# use version number from git log
DISTNAME =	opensta-2.0.18.20200308

CATEGORIES =	cad

GH_ACCOUNT =	abk-openroad
GH_PROJECT =	OpenSTA
GH_COMMIT =	d615f62fe412b0f12166e6d5559eacec43713e02

MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

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

pre-configure:
	cd ${WRKSRC}/etc && ${MODTCL_TCLSH_ADJ} TclEncode.tcl SwigCleanup.tcl
	cd ${WRKSRC}/test && ${MODTCL_TCLSH_ADJ} regression

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opensta
	${INSTALL_DATA} ${WRKSRC}/doc/OpenSTA.pdf ${PREFIX}/share/doc/opensta
	${INSTALL_DATA} ${WRKSRC}/doc/ChangeLog.txt ${PREFIX}/share/doc/opensta
	${INSTALL_DATA} ${WRKSRC}/doc/StaApi.txt ${PREFIX}/share/doc/opensta
	${INSTALL_DATA} ${WRKSRC}/doc/ApiChanges.txt ${PREFIX}/share/doc/opensta

do-test:
	cd ${WRKDIST} && test/regression all

.include <bsd.port.mk>
