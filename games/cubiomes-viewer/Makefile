COMMENT =	graphical Minecraft seed finder and map viewer

V =		4.1.2
DISTNAME =	cubiomes-viewer-${V}

SITES =	https://github.com/Cubitect/cubiomes-viewer/releases/download/${V}/
EXTRACT_SUFX =	-src.tar.gz

CATEGORIES =	games

# GPL v3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m

MODULES =		devel/qmake \
			x11/qt5

RUN_DEPENDS +=		devel/desktop-file-utils

MODQMAKE_ARGS +=	'CONFIG+=without_network'

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/cubiomes-viewer

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cubiomes-viewer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/metainfo
	${INSTALL_DATA}  \
	    ${WRKSRC}/etc/com.github.cubitect.cubiomes-viewer.metainfo.xml \
	    ${PREFIX}/share/metainfo/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} \
	    ${WRKSRC}/etc/com.github.cubitect.cubiomes-viewer.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/etc/icon.svg \
	    ${PREFIX}/share/pixmaps/cubiomes-viewer.svg

.include <bsd.port.mk>
