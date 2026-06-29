QT5NAME =	QtTranslations
COMMENT =	unofficial Qt5 translations

KDE_COMMIT =	388e4f32ed4b28d92bd61b917ba0e6b910e2784d
KDE_VERSION =	0

RUN_DEPENDS =	x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}
BUILD_DEPENDS =	x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
		x11/qt5/qttools>=${QT5_VERSION},<${QT5_NEXT_VERSION}

COMPILER =			base-clang ports-gcc

MODQT5_DEPS =			no
MODQT5_USE_CXX11 =		No
NO_CCACHE =			Yes
DEBUG_PACKAGES =

.include <bsd.port.mk>
