# $OpenBSD: Makefile,v 1.6 1999/04/01 02:20:12 brad Exp $

DISTNAME=	xephem-3.2.2
CATEGORIES=	astro
NO_CDROM=	"NOFEE:	Can not sell"
MASTER_SITES=	ftp://iraf.noao.edu/contrib/xephem/xephem-3.2/

MAINTAINER=	angelos@openbsd.org

USE_MOTIF=	yes
USE_IMAKE=	yes

do-configure:
	@(cd ${WRKSRC}/libastro && ${SETENV} ${XMKMF})
	@(cd ${WRKSRC}/GUI/xephem && ${SETENV} ${XMKMF})

do-build:
	@(cd ${WRKSRC}/libastro && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${ALL_TARGET})
	@(cd ${WRKSRC}/GUI/xephem && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${ALL_TARGET})

do-install:
	@(cd ${WRKSRC}/GUI/xephem && \
	 ${SETENV} ${MAKE_ENV} \
	 ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${INSTALL_TARGET})
	@(cd ${WRKSRC}/GUI/xephem && \
	 ${SETENV} ${MAKE_ENV} \
	 ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} install.man)
	@(cd ${WRKSRC}/GUI/xephem && \
	 ${SED} -e 's,: .$$,: ${PREFIX}/lib/X11/xephem,' XEphem.ad > XEphem && \
	 ${INSTALL_DATA} XEphem ${PREFIX}/lib/X11/app-defaults)
	@${MKDIR} ${PREFIX}/lib/X11/xephem
	@${MKDIR} ${PREFIX}/lib/X11/xephem/auxil
	@( cd ${WRKSRC}/GUI/xephem/auxil; \
	   for f in *; do \
	     ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/auxil; \
	   done )
	@${MKDIR} ${PREFIX}/lib/X11/xephem/catalogs
	@( cd ${WRKSRC}/GUI/xephem/catalogs; \
	   for f in *; do \
	     ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/catalogs; \
	   done )
	@${MKDIR} ${PREFIX}/lib/X11/xephem/tools
	@( cd ${WRKSRC}/GUI/xephem/tools; \
	   for f in *; do \
	     if [ -d $$f ]; then \
	       ${MKDIR} ${PREFIX}/lib/X11/xephem/tools/$$f; \
	       ( cd $$f; \
	         for i in *; do \
	           ${INSTALL_DATA} $$i ${PREFIX}/lib/X11/xephem/tools/$$f; \
	         done ) \
	     else \
	       ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/tools; \
	     fi; \
	   done )
	@${ECHO} ""
	@${ECHO} "*** The initial auxil, catalogs, and tools files have"
	@${ECHO} "*** been placed in ${PREFIX}/lib/X11/xephem.  Move them"
	@${ECHO} "*** where you will.  Once moved you MUST modify"
	@${ECHO} "*** ${PREFIX}/lib/X11/app-defaults/XEphem"
	@${ECHO} "*** At a minimum you must change XEphem.BaseDir."
	@${ECHO} ""

.include <bsd.port.mk>
