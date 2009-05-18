#	$OpenBSD: Makefile,v 1.3 2009/05/18 05:56:03 phessler Exp $
PKG_ARCH-main =		*
PKG_ARCH-hires =	*

COMMENT-main =		marathon infinity data files
COMMENT-hires =		hires graphics and sounds
V =			0.0.20090509
DISTNAME =		marathoninfinity-${V}
PKGNAME-main =		marathoninfinity-${V}
PKGNAME-hires =		marathoninfinity-hires-${V}
HOMEPAGE =		http://source.bungie.org/get/

DISTFILES =		MarathonInfinity.zip
DISTFILES +=		LandscapeEnhancementPackv10.zip:0
DISTFILES +=		TotalTextureEnhancementv61.zip:1
DISTFILES +=		shots_fired.zip:2
DISTFILES +=		Trilogy_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE_CDROM =	"not for sale"
PERMIT_PACKAGE_FTP =	YES
PERMIT_DISTFILES_CDROM = "not for sale"
PERMIT_DISTFILES_FTP =	YES

MULTI_PACKAGES =	-main -hires
RUN_DEPENDS-hires =	::games/alephone/scenarios/marathoninfinity

EXTRACT_ONLY =		MarathonInfinity.zip LandscapeEnhancementPackv10.zip \
			    TotalTextureEnhancementv61.zip shots_fired.zip
INSTALL_LOC =		${PREFIX}/share/alephone
INSTALL_MI =		${INSTALL_LOC}/Infinity

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_MI}
	# Marathon Infinity
	@cd ${WRKDIR}/"Marathon Infinity"/ && pax -rw . ${INSTALL_MI}
	# LEP for MI
	${INSTALL_DATA_DIR} ${INSTALL_MI}/Landscapes
	@cd ${WRKDIR}/"Landscape Enhancement Package"/"Marathon 2 Durandal"/"Landscapes (put content in 'Aleph One' folder) "/Landscapes/ && pax -rw . ${INSTALL_MI}/Landscapes
	# Shots Fired
	${INSTALL_DATA_DIR} ${INSTALL_MI}/tex/shots/
	@cd ${WRKDIR}/tex/shots/ && pax -rw . ${INSTALL_MI}/Scripts/
	# TEP for MI
	${INSTALL_DATA_DIR} ${INSTALL_MI}/Textures/
	@cd ${WRKDIR}/Texture\ Enhancement\ Package\ 6.1/Texture\ Folders/Textures/Marathon\ 2\ Textures/ && pax -rw . ${INSTALL_MI}/Textures/
	${INSTALL_SCRIPT} ${FILESDIR}/marathoninfinity.sh ${PREFIX}/bin/marathoninfinity
	${INSTALL_DATA} ${FULLDISTDIR}/Trilogy_Manual.pdf ${INSTALL_MI}

NO_BUILD =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
