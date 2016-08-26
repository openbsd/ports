# $OpenBSD: Makefile,v 1.1.1.1 2016/08/26 08:57:07 bentley Exp $

COMMENT =	Urban Terror game data
PKGNAME =	urbanterror-data-4.2.023
CATEGORIES =	games

URT_VER =	42
URT_REV =	023

DISTNAME =	UrbanTerror${URT_VER}_full${URT_REV}

HOMEPAGE =	http://urbanterror.info/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# Explicit permission to redistribute unmodified data files online as distfile
# or package.
PERMIT_PACKAGE_CDROM =  May not be redistributed on physical media
PERMIT_PACKAGE_FTP =    Yes

MASTER_SITES=   http://cdn.urbanterror.info/urt/42/zips/ \
		http://www.f1m.fr/uploads/urt/ \
		http://mirror.urtstats.net/urbanterror/

EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

WRKDIST =	${WRKDIR}/UrbanTerror${URT_VER}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/urbanterror/
	${INSTALL_DATA_DIR} ${PREFIX}/share/urbanterror/q3ut4/
	${INSTALL_DATA} ${WRKDIST}/q3ut4/*.pk3 ${PREFIX}/share/urbanterror/q3ut4/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/urbanterror/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/urbanterror/
	${INSTALL_DATA} ${WRKDIST}/q3ut4/autoexec_example.cfg ${PREFIX}/share/examples/urbanterror/
	${INSTALL_DATA} ${WRKDIST}/q3ut4/mapcycle_example.txt ${PREFIX}/share/examples/urbanterror/
	${INSTALL_DATA} ${WRKDIST}/q3ut4/server_example.cfg ${PREFIX}/share/examples/urbanterror/
	${INSTALL_DATA} ${WRKDIST}/q3ut4/QIIIA_Game_Source_License.doc ${PREFIX}/share/doc/urbanterror/
	${INSTALL_DATA} ${WRKDIST}/q3ut4/readme42.txt ${PREFIX}/share/doc/urbanterror/

.include <bsd.port.mk>
