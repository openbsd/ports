# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:31 espie Exp $

COMMENT=		Visual Tcl development environment

DISTNAME=		vtcl-1.6.1a1
REVISION=		1
CATEGORIES=		devel
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

HOMEPAGE=		http://vtcl.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vtcl/}

MODULES=		x11/tk
NO_BUILD=		Yes
RUN_DEPENDS=		${MODTK_RUN_DEPENDS}

pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

do-install:
	rm ${WRKSRC}/lib/propmgr.tcl.orig ${WRKSRC}/lib/tkcon.tcl.orig
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vtcl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vtcl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vtcl
	cp -R ${WRKSRC}/vtcl.tcl ${WRKSRC}/images ${WRKSRC}/lib \
	     ${WRKSRC}/demo ${PREFIX}/lib/vtcl
	cp -R ${WRKSRC}/sample ${PREFIX}/share/examples/vtcl
	cp -R ${WRKSRC}/doc ${PREFIX}/share/doc/vtcl
	${SUBST_CMD} -c ${FILESDIR}/vtcl ${WRKDIST}/vtcl
	${INSTALL_SCRIPT} ${WRKDIST}/vtcl ${PREFIX}/bin

NO_TEST=		Yes

.include <bsd.port.mk>
