# $OpenBSD: Makefile,v 1.5 2009/04/16 22:15:46 sthen Exp $

COMMENT=		Visual Tcl development environment

DISTNAME=		vtcl-1.6.1a1
CATEGORIES=		devel

HOMEPAGE=		http://vtcl.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vtcl/}

MODTCL_VERSION=		8.4
MODTK_VERSION=		8.4
MODULES=		x11/tk
RUN_DEPENDS=		${MODTK_RUN_DEPENDS}

pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

# override configure/build stage to separate vtcl from its lib
do-build:
	echo "#!/bin/sh" > ${WRKSRC}/vtcl
	echo "VTCL_HOME=${LOCALBASE}/lib/vtcl" >> ${WRKSRC}/vtcl
	echo "PATH_TO_WISH=${MODTK_BIN}" >> ${WRKSRC}/vtcl
	echo "export PATH_TO_WISH VTCL_HOME" >> ${WRKSRC}/vtcl
	echo "exec \$${PATH_TO_WISH} \$${VTCL_HOME}/vtcl.tcl \$$*" >> ${WRKSRC}/vtcl
	chmod +x ${WRKSRC}/vtcl

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vtcl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vtcl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vtcl
	cp -R ${WRKSRC}/vtcl.tcl ${WRKSRC}/images ${WRKSRC}/lib \
	     ${WRKSRC}/demo ${PREFIX}/lib/vtcl
	cp -R ${WRKSRC}/sample ${PREFIX}/share/examples/vtcl
	cp -R ${WRKSRC}/doc ${PREFIX}/share/doc/vtcl
	${INSTALL_SCRIPT} ${WRKSRC}/vtcl ${PREFIX}/bin

NO_REGRESS=		Yes

.include <bsd.port.mk>
