# OpenBSD makefile for:	xephem
# Version required:     3.0
# Date created:         Thu Aug  1 09:10:22 CDT 1996
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/08/05 06:00:00 marc Exp $
#

DISTNAME=	xephem-3.1
CATEGORIES=	astro
NO_CDROM=	"NOFEE:	Can not sell"
MASTER_SITES=	ftp://iraf.noao.edu/contrib/xephem/xephem-3.1/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xm\\.1\\.:${PORTSDIR}/x11/lesstif

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
	@(cd ${WRKSRC}/GUI/xephem && \
	 ${SED} -e 's,: .$$,: ${PREFIX}/lib/X11/xephem,' XEphem.bw.ad > XEphem.bw && \
	 ${INSTALL_DATA} XEphem.bw ${PREFIX}/lib/X11/app-defaults)
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
	@${ECHO} "*** ${PREFIX}/lib/X11/app-defaults/XEphem and"
	@${ECHO} "*** ${PREFIX}/lib/X11/app-defaults/XEphem.bw."
	@${ECHO} "*** At a minimum you must change XEphem.BaseDir."
	@${ECHO} ""

.include <bsd.port.mk>
