COMMENT-main =		model railroad control daemon
COMMENT-gui =		model railroad control daemon client

VERSION =		2.0
GH_ACCOUNT =		buzzdeee
GH_PROJECT =		rocrail
GH_COMMIT =		de50d21631ae4b2210206eecde1eb00f8a8838ef
DISTNAME =              rocrail-${VERSION}.0.20260304
PKGNAME-main =		rocrail-${VERSION}.0.20260304
PKGNAME-gui =		rocview-${VERSION}.0.20260304
CATEGORIES =		misc x11

HOMEPAGE =		https://www.rocrail.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =		Yes

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES =	-main -gui
WANTLIB +=		${COMPILER_LIBCXX} c m pthread
WANTLIB-gui +=		${WANTLIB}
WANTLIB-gui +=		wx_baseu-3.2 wx_baseu_net-3.2 wx_baseu_xml-3.2
WANTLIB-gui +=		wx_gtk3u_core-3.2 wx_gtk3u_html-3.2 wx_gtk3u_qa-3.2
WANTLIB-gui +=		wx_gtk3u_xrc-3.2

RUN_DEPENDS-main +=	devel/desktop-file-utils
LIB_DEPENDS-gui +=	x11/wxWidgets>=3.0.4
RUN_DEPENDS-gui +=	${PKGPATH},-main

USE_GMAKE =		Yes
MAKE_FILE =		makefile
MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" CPP="${CC}" LNK="${CXX}" LINKTOOL="${CXX}"
MAKE_FLAGS +=		PLATFORM="OPENBSD"
ALL_TARGET =		offline
WRKDIST =		${WRKDIR}/Rocrail-${GH_COMMIT}

THEMES1 =		Basic \
			CV19 \
			DB \
			ILTIS \
			SBB-RHB \
			SpDrS60
THEMES2 =		Accessories \
			NL \
			NMBS-SNCB \
			OeBB \
			Roads \
			SZ \
			SpDrS60/alt \
			UK

AMERICANTHEMES =	ATSF \
			Amtrak \
			"B&O" \
			"C&O" \
			CROR \
			ICG \
			"N&W" \
			NORAC \
			PRR \
			Seaboard \
			UP

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/svg/americanthemes
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/stylesheets
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_PROGRAM} ${WRKBUILD}/unxbin/rocrail ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/unxbin/rocview ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/rocrail
	${INSTALL_PROGRAM} ${WRKBUILD}/unxbin/rocview ${PREFIX}/libexec/rocrail
	${INSTALL_DATA} ${WRKBUILD}/unxbin/*.so ${PREFIX}/lib/rocrail
	${INSTALL_DATA} ${WRKBUILD}/rocrail/rocraild.png ${PREFIX}/share/rocrail
	${INSTALL_DATA} ${WRKBUILD}/rocrail/package/rocrail.xpm ${PREFIX}/share/rocrail
	${INSTALL_DATA} ${WRKBUILD}/rocrail/package/plan.xml ${PREFIX}/share/rocrail
	${INSTALL_DATA} ${WRKBUILD}/rocview/icons/* ${PREFIX}/share/rocrail/icons
.for i in ${THEMES1}
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/svg/themes/${i}
	${INSTALL_DATA} ${WRKBUILD}/rocview/svg/themes/${i}/properties.xml \
		${PREFIX}/share/rocrail/svg/themes/${i}/
	${INSTALL_DATA} ${WRKBUILD}/rocview/svg/themes/${i}/*.svg \
		${PREFIX}/share/rocrail/svg/themes/${i}/
.endfor
.for i in ${THEMES2}
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/svg/themes/${i}
	${INSTALL_DATA} ${WRKBUILD}/rocview/svg/themes/${i}/*.svg \
		${PREFIX}/share/rocrail/svg/themes/${i}
.endfor
.for i in ${AMERICANTHEMES}
	${INSTALL_DATA_DIR} ${PREFIX}/share/rocrail/svg/americanthemes/${i}
	${INSTALL_DATA} ${WRKBUILD}/rocview/svg/americanthemes/${i}/* \
		${PREFIX}/share/rocrail/svg/americanthemes/${i}
.endfor
	${INSTALL_DATA} ${WRKBUILD}/rocrail/symbols/*.{png,gif,db,dbencryptable} ${PREFIX}/share/rocrail/symbols
	${INSTALL_DATA} ${WRKBUILD}/rocrail/symbols/control/* ${PREFIX}/share/rocrail/symbols/control
	${INSTALL_DATA} ${WRKBUILD}/stylesheets/* ${PREFIX}/share/rocrail/stylesheets
	${INSTALL_DATA} ${WRKBUILD}/rocrail/package/images/* ${PREFIX}/share/rocrail/images
	${INSTALL_DATA} ${WRKBUILD}/rocrail/package/*.desktop ${PREFIX}/share/applications
	${SUBST_PROGRAM} ${FILESDIR}/rocview.sh ${PREFIX}/bin/rocview

.include <bsd.port.mk>
