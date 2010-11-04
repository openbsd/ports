# $OpenBSD: Makefile,v 1.6 2010/11/04 17:51:46 jasper Exp $

COMMENT=		Visual Tcl development environment

DISTNAME=		vtcl-1.6.1a1
REVISION=		0
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
NO_BUILD=		Yes
RUN_DEPENDS=		${MODTK_RUN_DEPENDS}

pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vtcl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vtcl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vtcl
	cp -R ${WRKSRC}/vtcl.tcl ${WRKSRC}/images ${WRKSRC}/lib \
	     ${WRKSRC}/demo ${PREFIX}/lib/vtcl
	cp -R ${WRKSRC}/sample ${PREFIX}/share/examples/vtcl
	cp -R ${WRKSRC}/doc ${PREFIX}/share/doc/vtcl
	${SUBST_CMD} -c ${FILESDIR}/vtcl ${WRKDIST}/vtcl
	${INSTALL_SCRIPT} ${WRKDIST}/vtcl ${PREFIX}/bin

NO_REGRESS=		Yes

.include <bsd.port.mk>
