# $OpenBSD: Makefile,v 1.11 2000/03/07 04:49:13 angelos Exp $

DISTNAME=	xephem-3.2.2
CATEGORIES=	astro
MASTER_SITES=	ftp://iraf.noao.edu/contrib/xephem/xephem-3.2/
NEED_VERSION=	1.210

LICENSE_TYPE=   NOFEE
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAINTAINER=	angelos@openbsd.org

USE_MOTIF=	yes
USE_IMAKE=	yes

do-configure:
	@(cd ${WRKSRC}/libastro && ${SETENV} ${XMKMF})
	@(cd ${WRKSRC}/GUI/xephem && ${SETENV} ${XMKMF})

do-build:
	@(cd ${WRKSRC}/libastro && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET})
	@(cd ${WRKSRC}/GUI/xephem && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET})

do-install:
	@(cd ${WRKSRC}/GUI/xephem && \
	 ${SETENV} ${MAKE_ENV} \
	 ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${INSTALL_TARGET})
	@(cd ${WRKSRC}/GUI/xephem && \
	 ${SETENV} ${MAKE_ENV} \
	 ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} install.man)
	@(cd ${WRKSRC}/GUI/xephem && \
	 sed -e 's,: .$$,: ${PREFIX}/lib/X11/xephem,' XEphem.ad > XEphem && \
	 ${INSTALL_DATA} XEphem ${PREFIX}/lib/X11/app-defaults)
	@mkdir -p ${PREFIX}/lib/X11/xephem
	@mkdir -p ${PREFIX}/lib/X11/xephem/auxil
	@(cd ${WRKSRC}/GUI/xephem/auxil; \
	   for f in *; do \
	     ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/auxil; \
	   done)
	@mkdir -p ${PREFIX}/lib/X11/xephem/catalogs
	@(cd ${WRKSRC}/GUI/xephem/catalogs; \
	   for f in *; do \
	     ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/catalogs; \
	   done)
	@mkdir -p ${PREFIX}/lib/X11/xephem/tools
	@(cd ${WRKSRC}/GUI/xephem/tools; \
	   for f in *; do \
	     if [ -d $$f ]; then \
	       mkdir -p ${PREFIX}/lib/X11/xephem/tools/$$f; \
	       (cd $$f; \
	         for i in *; do \
	           ${INSTALL_DATA} $$i ${PREFIX}/lib/X11/xephem/tools/$$f; \
	         done) \
	     else \
	       ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/tools; \
	     fi; \
	   done)
	@echo ""
	@echo "*** The initial auxil, catalogs, and tools files have"
	@echo "*** been placed in ${PREFIX}/lib/X11/xephem.  Move them"
	@echo "*** where you will.  Once moved you MUST modify"
	@echo "*** ${PREFIX}/lib/X11/app-defaults/XEphem"
	@echo "*** At a minimum you must change XEphem.BaseDir."
	@echo ""

.include <bsd.port.mk>
