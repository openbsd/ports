# $OpenBSD: Makefile,v 1.4 2007/09/16 02:53:14 merdely Exp $

COMMENT=		Visual Tcl development environment

DISTNAME=		vtcl-1.6.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://vtcl.sourceforge.net/

# GPL2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vtcl/}

RUN_DEPENDS=		::x11/tk/8.4

# override configure/build stage to separate vtcl from its lib
do-build:
	echo "#!/bin/sh" > ${WRKSRC}/vtcl
	echo "VTCL_HOME=${LOCALBASE}/lib/vtcl" >> ${WRKSRC}/vtcl
	echo "PATH_TO_WISH=${LOCALBASE}/bin/wish8.4" >> ${WRKSRC}/vtcl
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
