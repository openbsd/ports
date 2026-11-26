BROKEN-sparc64 = BezierTest.testLinear2D:90 expected:<0.5> but was:<0.0>

VERSION =	1.9.11
REVISION =	7
PKGSPEC =       libgdx->=${VERSION},<1.9.12
PORTROACH =	ignore:1

WANTLIB += ${COMPILER_LIBCXX} X11 m

DISTFILES ?=	${DISTNAME}${EXTRACT_SUFX} 
DISTFILES.a ?= 	m2repo-libgdx-${VERSION}-tools-p0.tar.gz

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/libgdx-run.sh ${PREFIX}/bin/libgdx-run
	${INSTALL_SCRIPT} ${FILESDIR}/libgdx-setup.sh ${PREFIX}/bin/libgdx-setup

.include <bsd.port.mk>
