# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:53 sthen Exp $

COMMENT-main =		model railroad control daemon
COMMENT-gui =		model railroad control daemon client

VERSION =		2.0
REV =			2585
DISTNAME =		Rocrail-2585
PKGNAME-main =		rocrail-${VERSION}.${REV}
PKGNAME-gui =		rocview-${VERSION}.${REV}
CATEGORIES =		misc x11

REVISION-main =		8
REVISION-gui =		8

HOMEPAGE =		http://www.rocrail.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

MASTER_SITES =		http://bugs.launchpad.net/rocrail/sunrise/2.0/+download/

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES =	-main -gui
WANTLIB +=		c pthread
WANTLIB-gui +=		${WANTLIB} m ${COMPILER_LIBCXX}
WANTLIB-gui +=		wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB-gui +=		wx_gtk3u_core-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0
WANTLIB-gui +=		wx_gtk3u_xrc-3.0

LIB_DEPENDS-gui +=	x11/wxWidgets>=3.0.4
RUN_DEPENDS-gui +=	${PKGPATH},-main

USE_GMAKE =		Yes
CONFIGURE_STYLE =	none
MAKE_ENV =		CC="${CC}" CXX="${CXX}"
MAKE_FILE =		makefile
MAKE_FLAGS =		PLATFORM=OPENBSD
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

post-extract:
	mkdir ${WRKDIST}/unxgen
	cd ${WRKDIST}/unxgen && tar zxf ${WRKDIST}/rocs/rocs-gen.tar.gz

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
