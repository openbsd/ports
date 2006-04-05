# $OpenBSD: Makefile,v 1.13 2006/04/05 04:37:00 sturm Exp $

COMMENT=		'icons mainly for use in Window Maker'

DISTNAME=		wmicons-1.0
CATEGORIES=		graphics x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DISTFILES=		DWiconpack1.tar.gz DWiconpack2.tar.gz IconFest-1.2.tgz \
			NeXT_XEmacs_tar.gz wm_icons_png.tar.gz wm_icons_tif.tar.gz

DIST_SUBDIR=		wmicons

RUN_DEPENDS=		:windowmaker-*:x11/windowmaker

NO_REGRESS=		Yes

NO_BUILD=		Yes

PKG_ARCH=		*

WMICONDIR=		${PREFIX}/share/WindowMaker/Pixmaps
WMDOCDIR=		${PREFIX}/share/doc/wmicons

post-extract:
	cd ${WRKDIR} && tar xf NeXT_XEmacs_tar

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
