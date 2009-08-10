# $OpenBSD: Makefile,v 1.34 2009/08/10 06:29:52 kili Exp $

COMMENT=	interactive astronomical ephemeris
DISTNAME=	xephem-3.2.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	astro
MASTER_SITES=	http://humppa.nl/distfiles/

HOMEPAGE=	http://www.clearskyinstitute.com/xephem/

PERMIT_PACKAGE_CDROM=   no modifications, no fee
PERMIT_PACKAGE_FTP=     no modifications
PERMIT_DISTFILES_CDROM= no fee
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xp Xt c m \
			pthread-stubs xcb

USE_MOTIF=	any
CONFIGURE_STYLE= imake

do-configure:
	@cd ${WRKSRC}/libastro && ${SETENV} ${XMKMF}
	@cd ${WRKSRC}/GUI/xephem && ${SETENV} ${XMKMF}

do-build:
	@cd ${WRKSRC}/libastro && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
	@cd ${WRKSRC}/GUI/xephem && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

USE_X11=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/xephem/auxil
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/xephem/catalogs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/xephem/tools
	@cd ${WRKSRC}/GUI/xephem && \
	 ${SETENV} ${MAKE_ENV} \
	 ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${INSTALL_TARGET}
	@cd ${WRKSRC}/GUI/xephem && \
	 sed -e 's,ShareDir: \.$$,ShareDir: ${TRUEPREFIX}/lib/X11/xephem,' XEphem.ad > XEphem && \
	 ${INSTALL_DATA} XEphem ${PREFIX}/lib/X11/app-defaults
	@cd ${WRKSRC}/GUI/xephem/auxil; \
	   for f in *; do \
	     ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/auxil; \
	   done
	@cd ${WRKSRC}/GUI/xephem/catalogs; \
	   for f in *; do \
	     ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/catalogs; \
	   done
	@cd ${WRKSRC}/GUI/xephem/tools; \
	   for f in *; do \
	     if [ -d $$f ]; then \
	       ${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/xephem/tools/$$f; \
	       (cd $$f; \
	         for i in *; do \
	           ${INSTALL_DATA} $$i ${PREFIX}/lib/X11/xephem/tools/$$f; \
	         done) \
	     else \
	       ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/tools; \
	     fi; \
	   done

.include <bsd.port.mk>
