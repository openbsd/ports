# $OpenBSD: Makefile,v 1.6 2014/08/10 09:58:06 espie Exp $

SHARED_ONLY =		Yes

COMMENT-main =		model railroad control daemon
COMMENT-gui =		model railroad control daemon client

VERSION =		2.0
REV =			2585
DISTNAME =		Rocrail-2585
PKGNAME-main =		rocrail-${VERSION}.${REV}
PKGNAME-gui =		rocview-${VERSION}.${REV}
CATEGORIES =		misc x11

REVISION-main =		1
REVISION-gui =		0

HOMEPAGE =		http://www.rocrail.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		http://bugs.launchpad.net/rocrail/sunrise/2.0/+download/

MULTI_PACKAGES =	-main -gui
WANTLIB +=		c pthread
WANTLIB-gui += 		${WANTLIB} m stdc++
WANTLIB-gui += 		wx_base wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv
WANTLIB-gui += 		wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html
WANTLIB-gui += 		wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc
LIB_DEPENDS-gui +=	x11/wxWidgets
RUN_DEPENDS-gui +=	${PKGPATH},-main

USE_GMAKE =		Yes
CONFIGURE_STYLE =	none
MAKE_FILE =		makefile
MAKE_FLAGS =		PLATFORM=OPENBSD CPP=${CC} LNK=${CC}
ALL_TARGET =		fromtar
WRKDIST =		${WRKDIR}/Rocrail

THEMES1 =		Basic \
			DB \
			ILTIS \
			SBB-RHB \
			SpDrS60
THEMES2 =		Accessories \
			NL \
			NMBS-SNCB \
			Roads \
			SpDrS60/alt

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/rocrail
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/icons
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/symbols
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/symbols/control
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/svg/themes
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/stylesheets
	${INSTALL_PROGRAM} ${WRKBUILD}/unxbin/rocrail ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/unxbin/rocview ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/unxbin/*.so ${PREFIX}/lib/rocrail
	${INSTALL_DATA} ${WRKBUILD}/rocrail/rocraild.png ${PREFIX}/share/rocrail
	${INSTALL_DATA} ${WRKBUILD}/rocrail/package/rocrail.xpm ${PREFIX}/share/rocrail
	${INSTALL_DATA} ${WRKBUILD}/rocview/icons/* ${PREFIX}/share/rocrail/icons
.for i in ${THEMES1}
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/svg/themes/${i}
	${INSTALL_DATA} ${WRKBUILD}/rocview/svg/themes/${i}/properties.xml \
		${PREFIX}/share/rocrail/svg/themes/${i}/
	${INSTALL_DATA} ${WRKBUILD}/rocview/svg/themes/${i}/*.svg \
		${PREFIX}/share/rocrail/svg/themes/${i}/
.endfor
.for i in ${THEMES2}
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/svg/themes/${i} \
		${PREFIX}/share/rocrail/svg/themes/${i}
	${INSTALL_DATA} ${WRKBUILD}/rocview/svg/themes/${i}/*.svg \
		${PREFIX}/share/rocrail/svg/themes/${i}
.endfor
	${INSTALL_DATA} ${WRKBUILD}/rocrail/symbols/*.{png,gif,db,dbencryptable} ${PREFIX}/share/rocrail/symbols
	${INSTALL_DATA} ${WRKBUILD}/rocrail/symbols/control/* ${PREFIX}/share/rocrail/symbols/control
	${INSTALL_DATA} ${WRKBUILD}/stylesheets/* ${PREFIX}/share/rocrail/stylesheets
	${INSTALL_DATA} ${WRKBUILD}/rocrail/package/images/* ${PREFIX}/share/rocrail/images
	${SUBST_PROGRAM} ${FILESDIR}/rocview.sh ${PREFIX}/bin/rocview.sh

.include <bsd.port.mk>
