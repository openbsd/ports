# $OpenBSD: Makefile,v 1.2 2016/10/12 02:01:33 bentley Exp $

COMMENT =	Urban Terror game data
PKGNAME =	urbanterror-data-4.3.1
CATEGORIES =	games

URT_VER =	43
URT_REV =	1

DISTNAME =	UrbanTerror${URT_VER}${URT_REV}_full

HOMEPAGE =	http://urbanterror.info/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# Explicit permission to redistribute unmodified data files online as distfile
# or package.
PERMIT_PACKAGE_CDROM =  May not be redistributed on physical media
PERMIT_PACKAGE_FTP =    Yes

MASTER_SITES =	http://cdn.urbanterror.info/urt/${URT_VER}/releases/zips/

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
	${INSTALL_DATA} ${WRKDIST}/q3ut4/readme${URT_VER}.txt ${PREFIX}/share/doc/urbanterror/

.include <bsd.port.mk>
