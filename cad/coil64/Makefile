COMMENT =		inductance coil calculator

GH_ACCOUNT =		radioacoustick
GH_PROJECT =		Coil64
GH_TAGNAME =		v2.2.33

CATEGORIES =		cad

HOMEPAGE =		https://coil32.net/

#GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets c m

MODULES =		devel/qmake \
			x11/qt5

CONFIGURE_STYLE =	qmake

INSTALLDIR =		${PREFIX}/bin/coil64

NO_TEST =		Yes

# qmake install directive screws all of this up, so roll it by hand
do-install:
	${INSTALL_DATA_DIR} ${INSTALLDIR}
	${INSTALL_DATA_DIR} ${INSTALLDIR}/Data
	@cp -r ${WRKBUILD}/Coil64 ${INSTALLDIR}
	@cp -r ${WRKSRC}/data/* ${INSTALLDIR}/Data

post-install:
	@ln -s ${TRUEPREFIX}/bin/coil64/Coil64 ${PREFIX}/bin/Coil64

.include <bsd.port.mk>
