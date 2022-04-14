VERSION =	1.9.11
REVISION =	5

WANTLIB += ${COMPILER_LIBCXX} X11 m

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/libgdx-run.sh ${PREFIX}/bin/libgdx-run
	${INSTALL_SCRIPT} ${FILESDIR}/libgdx-setup.sh ${PREFIX}/bin/libgdx-setup

.include <bsd.port.mk>
