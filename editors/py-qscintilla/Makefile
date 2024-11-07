COMMENT =		Python binding for the Scintilla source code editor

VERSION =		2.14.1
MODPY_EGG_VERSION =	${VERSION}
DISTNAME =		QScintilla_src-${VERSION}
PKGNAME =		py-qscintilla-${VERSION}
REVISION =		1

CATEGORIES =		editors x11 devel

HOMEPAGE =		https://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

SITES =			https://www.riverbankcomputing.com/static/Downloads/QScintilla/${VERSION}/

COMPILER =		base-clang ports-gcc ports-gcc
WANTLIB +=		${COMPILER_LIBCXX} GL m

MODULES =		lang/python

FLAVORS =		python3 qt6
FLAVOR +=		python3

.if ${FLAVOR:Mqt6}
FULLPKGNAME =		py3-qscintilla-qt6-${VERSION}
MODULES +=		x11/qt6
QTVER =			qt6
PYQTVER =		PyQt6
PYQTMOD =		qscimod6
PYQTPREFIX =		PyQt6_
WANTLIB +=		Qt6Core Qt6Gui Qt6PrintSupport Qt6Widgets qscintilla2_qt6
LIB_DEPENDS =		editors/qscintilla,qt6=${VERSION}
.else
MODULES +=	x11/qt5
QTVER =			qt5
PYQTVER =		PyQt5
PYQTMOD =		qscimod5
PYQTPREFIX =		# empty
WANTLIB +=		Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets qscintilla2_qt5
LIB_DEPENDS =		editors/qscintilla=${VERSION}
.endif

BUILD_DEPENDS =		devel/py-qt-builder${MODPY_FLAVOR} \
			${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-sip${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/py-${QTVER}${MODPY_FLAVOR}

NO_TEST =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/sip-build

CONFIGURE_ARGS =	--verbose

WRKSRC =	${WRKDIST}/Python

MAKE_FLAGS =	-C build \
		CC=${CC} \
		CXX=${CXX} \
		COPTS="${CFLAGS}" \
		CXXOPTS="${CXXFLAGS}"

FAKE_FLAGS =	INSTALL_ROOT=${DESTDIR}

SUBST_VARS +=	QTVER PYQTVER PYQTPREFIX PYQTMOD

post-extract:
	# Needed to run sip-6.5+ sip-build
	ln -sf ${MODQT_QMAKE} ${WRKDIR}/bin/qmake
	cp ${WRKSRC}/pyproject-${QTVER}.toml ${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
