#	$OpenBSD: Makefile,v 1.1.1.1 2008/07/09 16:56:43 phessler Exp $
PKG_ARCH =	*

COMMENT =	marathon one data files
V =		0.0.20080413
DISTNAME =	marathon-${V}
PKGNAME =	marathon-${V}
HOMEPAGE =	http://source.bungie.org/get/

DISTFILES =	M1A1.zip

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE_CDROM =	"not for sale"
PERMIT_PACKAGE_FTP =	YES
PERMIT_DISTFILES_CDROM = "not for sale"
PERMIT_DISTFILES_FTP =	YES

INSTALL_LOC =	${PREFIX}/share/alephone
INSTALL_M =	${INSTALL_LOC}/Marathon


do-install:
	${INSTALL_DATA_DIR} ${INSTALL_M}
	# Marathon 1
	@cd ${WRKDIR}/M1A1 && pax -rw . ${INSTALL_M}
	${INSTALL_SCRIPT} ${FILESDIR}/marathon.sh ${PREFIX}/bin/marathon

#do-install:
#	${INSTALL_DATA_DIR} ${INSTALL_M}
#	# Marathon 1
#	${INSTALL_DATA} ${WRKDIR}/M1A1/"Fonts" ${INSTALL_M}
#	${INSTALL_DATA} ${WRKDIR}/M1A1/"M1A1 Images.imgA" ${INSTALL_M}
#	${INSTALL_DATA} ${WRKDIR}/M1A1/"M1A1 Map.sceA" ${INSTALL_M}
#	${INSTALL_DATA} ${WRKDIR}/M1A1/"M1A1 Music.aif" ${INSTALL_M}
#	${INSTALL_DATA} ${WRKDIR}/M1A1/"M1A1 Shapes.shpA" ${INSTALL_M}
#	${INSTALL_DATA} ${WRKDIR}/M1A1/"M1A1 Sounds.sndA" ${INSTALL_M}
#	${INSTALL_DATA} ${WRKDIR}/M1A1/"Read Me M1A1.html" ${INSTALL_M}
#	${INSTALL_DATA_DIR} ${INSTALL_M}/Scripts
#	${INSTALL_DATA} ${WRKDIR}/M1A1/Scripts/*.mml ${INSTALL_M}/Scripts	
#	${INSTALL_DATA_DIR} ${INSTALL_M}/Themes/Default
#	${INSTALL_DATA} ${WRKDIR}/M1A1/Themes/Default/* ${INSTALL_M}/Themes/Default
#	${INSTALL_DATA_DIR} ${INSTALL_M}/Tracks
#	${INSTALL_DATA} ${WRKDIR}/M1A1/Tracks/* ${INSTALL_M}/Tracks/
#	${INSTALL_SCRIPT} ${FILESDIR}/marathon.sh ${PREFIX}/bin/marathon

NO_BUILD =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
