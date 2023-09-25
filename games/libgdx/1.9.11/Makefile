VERSION =	1.9.11
REVISION =	6

WANTLIB += ${COMPILER_LIBCXX} X11 m

DISTFILES ?=	${DISTNAME}${EXTRACT_SUFX} 
DISTFILES.a ?= 	m2repo-libgdx-${VERSION}-tools-p0.tar.gz

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/libgdx-run.sh ${PREFIX}/bin/libgdx-run
	${INSTALL_SCRIPT} ${FILESDIR}/libgdx-setup.sh ${PREFIX}/bin/libgdx-setup

.include <bsd.port.mk>
