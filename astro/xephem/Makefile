# $OpenBSD: Makefile,v 1.16 2000/09/12 13:13:16 brad Exp $

DISTNAME=	xephem-3.2.3
CATEGORIES=	astro
NEED_VERSION=	1.320
MASTER_SITES=	ftp://iraf.noao.edu/contrib/xephem/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes


USE_MOTIF=	Yes
CONFIGURE_STYLE= imake

do-configure:
	@cd ${WRKSRC}/libastro && ${SETENV} ${XMKMF}
	@cd ${WRKSRC}/GUI/xephem && ${SETENV} ${XMKMF}

do-build:
	@cd ${WRKSRC}/libastro && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
	@cd ${WRKSRC}/GUI/xephem && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	@cd ${WRKSRC}/GUI/xephem && \
	 ${SETENV} ${MAKE_ENV} \
	 ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${INSTALL_TARGET}
	@cd ${WRKSRC}/GUI/xephem && \
	 ${SETENV} ${MAKE_ENV} \
	 ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} install.man
	@cd ${WRKSRC}/GUI/xephem && \
	 sed -e 's,: .$$,: ${TRUEPREFIX}/lib/X11/xephem,' XEphem.ad > XEphem && \
	 ${INSTALL_DATA} XEphem ${PREFIX}/lib/X11/app-defaults
	@mkdir -p ${PREFIX}/lib/X11/xephem
	@mkdir -p ${PREFIX}/lib/X11/xephem/auxil
	@cd ${WRKSRC}/GUI/xephem/auxil; \
	   for f in *; do \
	     ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/auxil; \
	   done
	@mkdir -p ${PREFIX}/lib/X11/xephem/catalogs
	@cd ${WRKSRC}/GUI/xephem/catalogs; \
	   for f in *; do \
	     ${INSTALL_DATA} $$f ${PREFIX}/lib/X11/xephem/catalogs; \
	   done
	@mkdir -p ${PREFIX}/lib/X11/xephem/tools
	@cd ${WRKSRC}/GUI/xephem/tools; \
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
	   done
	${INSTALL_PROGRAM} ${WRKSRC}/GUI/xephem/xephem ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/GUI/xephem/xephem.0 ${PREFIX}/man/cat1

.include <bsd.port.mk>
