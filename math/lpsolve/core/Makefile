COMMENT =		mixed integer linear programming solver

DISTNAME =		lp_solve_${V}_source
PKGNAME =		lpsolve-${V}
REVISION =		1
WRKDIST =		${WRKDIR}/lp_solve_${V_MAJOR}

SHARED_LIBS =		lpsolve55	0.0	# unversioned upstream

WANTLIB +=		c m

# Docs are distributed separately
DOCDISTFILE =		lp_solve_5.5.2.0_doc${EXTRACT_SUFX}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			${DOCDISTFILE}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

# Build is a series of shell scripts
MAKE_ENV +=	CC=${CC} LIBlpsolve55_VERSION=${LIBlpsolve55_VERSION} \
		WRKDIR=${WRKDIR}

do-build:
	mkdir ${WRKDIR}/tmp	# builds programs here to check for features
	cd ${WRKSRC}/lpsolve55 && \
		${MAKE_ENV} sh -x ccc
	cd ${WRKSRC}/lp_solve && ${MAKE_ENV} sh -x ccc
	cd ${WRKSRC}/demo && ${MAKE_ENV} sh -x ccc

EXAMPLEDIR =	${PREFIX}/share/examples/lpsolve
do-install:
	@# Libs
	${INSTALL_DATA} ${WRKSRC}/lpsolve55/bin/liblpsolve55.a ${PREFIX}/lib/
	${INSTALL_DATA} \
		${WRKSRC}/lpsolve55/bin/liblpsolve55.so.${LIBlpsolve55_VERSION} \
		${PREFIX}/lib/
	@# Headers	
	${INSTALL_DATA_DIR} ${PREFIX}/include/lpsolve/
.for i in declare.h fortify.h ini.h lp_*.h lpkit.h lpsolve.h ufortify.h yacc_read.h
		${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/include/lpsolve/
.endfor
	@# Standalone solver
	${INSTALL_PROGRAM} ${WRKSRC}/lp_solve/bin/lp_solve ${PREFIX}/bin/
	@# Demo program
	${INSTALL_PROGRAM} ${WRKSRC}/demo/demo ${PREFIX}/bin/lp_solve_demo
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/demo/demo.c ${EXAMPLEDIR}

# Install docs from separate docs tarball
DOCDIR =	${PREFIX}/share/doc/lpsolve
post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${TAR} zxf ${DISTDIR}/${DOCDISTFILE} -C ${DOCDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCDIR}

NO_TEST =		Yes

.include <bsd.port.mk>
