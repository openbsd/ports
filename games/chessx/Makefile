COMMENT =	free chess database and analyzer

V =		1.5.6
GH_ACCOUNT =	Isarhamster
GH_PROJECT =	chessx
GH_TAGNAME =	v${V}-lw

DISTNAME =	chessx-${V}

CATEGORIES =	games

HOMEPAGE =	https://chessx.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5PrintSupport Qt5Svg Qt5TextToSpeech Qt5Widgets Qt5Xml
WANTLIB += c m pulse pulse-mainloop-glib quazip1-qt5 z

MODULES =	x11/qt5 \
		devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	archivers/quazip>=1.3 \
		x11/qt5/qtmultimedia \
		x11/qt5/qtspeech \
		x11/qt5/qtsvg

NO_TEST =	Yes

CXXFLAGS +=	-I${LOCALBASE}/include/QuaZip-Qt5/quazip/

# make sure bundled quazip is not picked up
post-extract:
	rm -R ${WRKDIST}/src/quazip

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/chessx ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/unix/chessx.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
