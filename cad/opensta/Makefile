# $OpenBSD: Makefile,v 1.3 2019/03/27 09:23:51 sthen Exp $

COMMENT =	Parallax Static Timing Analyzer

# use version number from git log
DISTNAME =	opensta-2.0.11.20190327
CATEGORIES =	cad

GH_ACCOUNT =	abk-openroad
GH_PROJECT =	OpenSTA
GH_COMMIT =	0f735f99b73c00772103a64da8489b39d09614b4

MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${COMPILER_LIBCXX} ${MODTCL_WANTLIB} c m z cudd

# C++11
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		lang/tcl

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
