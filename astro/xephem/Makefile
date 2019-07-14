# $OpenBSD: Makefile,v 1.53 2019/07/14 02:16:50 naddy Exp $

COMMENT=	interactive astronomical ephemeris
DISTNAME=	xephem-3.2.3
CATEGORIES=	astro
MASTER_SITES=	https://distfiles.nl/

HOMEPAGE=	http://www.clearskyinstitute.com/xephem/

PERMIT_PACKAGE=		no modifications
PERMIT_DISTFILES=	Yes

REVISION =	9
WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c m Xm

LIB_DEPENDS += x11/motif
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

CONFIGURE_STYLE= imake

do-configure:
	@cd ${WRKSRC}/libastro && ${SETENV} ${MAKE_ENV} ${XMKMF}
	@cd ${WRKSRC}/GUI/xephem && ${SETENV} ${MAKE_ENV} ${XMKMF}

do-build:
	@cd ${WRKSRC}/libastro && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
	@cd ${WRKSRC}/GUI/xephem && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

NO_TEST=	Yes

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
