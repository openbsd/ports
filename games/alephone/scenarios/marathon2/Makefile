#	$OpenBSD: Makefile,v 1.3 2009/05/18 05:56:03 phessler Exp $
PKG_ARCH-main=		*
PKG_ARCH-hires=		*

COMMENT-main=		marathon two data files
COMMENT-hires=		hires graphics and sounds
V=			0.0.20090509
DISTNAME=		marathon2-${V}
PKGNAME-main=		marathon2-${V}
PKGNAME-hires=		marathon2-hires-${V}
HOMEPAGE=		http://source.bungie.org/get/

DISTFILES=		Marathon2.zip
DISTFILES+=		LandscapeEnhancementPackv10.zip:0
DISTFILES+=		TotalTextureEnhancementv61.zip:1
DISTFILES+=		shots_fired.zip:2
DISTFILES +=		Marathon_2_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE_CDROM=	"not for sale"
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM= "not for sale"
PERMIT_DISTFILES_FTP=	YES

MULTI_PACKAGES= 	-main -hires
RUN_DEPENDS-hires=	::games/alephone/scenarios/marathon2

EXTRACT_ONLY =		Marathon2.zip LandscapeEnhancementPackv10.zip \
			    TotalTextureEnhancementv61.zip shots_fired.zip
INSTALL_LOC=		${PREFIX}/share/alephone
INSTALL_M2=		${INSTALL_LOC}/Marathon2


do-install:
	@${INSTALL_DATA_DIR} ${INSTALL_M2}
	# Marathon 2
	@cd ${WRKDIR}/"Marathon 2"/ && pax -rw . "${INSTALL_M2}"
	# LEP for M2
	@${INSTALL_DATA_DIR} ${INSTALL_M2}/Landscapes
	@cd "${WRKDIR}/Landscape Enhancement Package/Marathon 2 Durandal/Landscapes (put content in 'Aleph One' folder) /Landscapes/" && pax -rw . ${INSTALL_M2}/Landscapes
	# Shots Fired
	@${INSTALL_DATA_DIR} ${INSTALL_M2}/tex/shots/
	@cd ${WRKDIR}/tex/shots/ && pax -rw . ${INSTALL_M2}/tex/shots/
	@cd ${WRKDIR}/Scripts/ && pax -rw . ${INSTALL_M2}/Scripts/
	# TEP for M2
	@${INSTALL_DATA_DIR} ${INSTALL_M2}/Textures/
	@cd ${WRKDIR}/Texture\ Enhancement\ Package\ 6.1/Texture\ Folders/Textures/Marathon\ 2\ Textures/ && pax -rw . ${INSTALL_M2}/Textures/
	${INSTALL_SCRIPT} ${FILESDIR}/marathon2.sh ${PREFIX}/bin/marathon2
	${INSTALL_DATA} ${FULLDISTDIR}/Marathon_2_Manual.pdf ${INSTALL_M2}

NO_BUILD=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
