# $OpenBSD: Makefile,v 1.2 2001/03/09 14:28:49 wilfried Exp $

DISTNAME=		wmicons-1.0
CATEGORIES=		graphics x11 x11/windowmaker
NEED_VERSION=		1.340

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER}
DISTFILES=		DWiconpack1.tar.gz DWiconpack2.tar.gz IconFest-1.2.tgz \
			NeXT_XEmacs_tar.gz wm_icons_png.tar.gz wm_icons_tif.tar.gz

DIST_SUBDIR=		wmicons

RUN_DEPENDS=		wmaker::x11/windowmaker

NO_BUILD=		Yes

WMICONDIR=		${PREFIX}/share/WindowMaker/Pixmaps
WMDOCDIR=		${PREFIX}/share/doc/wmicons

do-install:
	${INSTALL_DATA_DIR} ${WMDOCDIR} ${WMICONDIR}
	cd ${WRKDIR}/IconFest-1.2; \
		${INSTALL_DATA} README ${WMDOCDIR}/README.IconFest; \
		${INSTALL_DATA} *.xpm *.tif ${WMICONDIR}
	cd ${WRKDIR}/NeXT.XEmacs; \
		${INSTALL_DATA} README.NeXT.XEmacs ${WMDOCDIR}; \
		${INSTALL_DATA} ./*/*.xpm ${WMICONDIR}
	cd ${WRKDIR}/dwiconpack1; \
		${INSTALL_DATA} dwiconpack1.README ${WMDOCDIR}; \
		${INSTALL_DATA} *.tif ${WMICONDIR}
	cd ${WRKDIR}/dwiconpack2; \
		${INSTALL_DATA} dwiconpack2.README ${WMDOCDIR}; \
		${INSTALL_DATA} *.tif ${WMICONDIR}
	cd ${WRKDIR}/vf_png; \
		${INSTALL_DATA} README ${WMDOCDIR}/README.vf_png; \
		${INSTALL_DATA} *.png ${WMICONDIR}
	cd ${WRKDIR}/vf_tif; \
		${INSTALL_DATA} README ${WMDOCDIR}/README.vf_tif; \
		${INSTALL_DATA} *.tif ${WMICONDIR}

.include <bsd.port.mk>
