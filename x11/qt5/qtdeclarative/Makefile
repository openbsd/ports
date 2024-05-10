QT5NAME =		QtDeclarative
COMMENT-main =		Qt5 Quick and QML components

KDE_COMMIT =		b99568135aa60de96ca2e121dc2e8d83fb1ca886
KDE_VERSION =		30

MULTI_PACKAGES =	-main -examples
DPB_PROPERTIES =	parallel

SHARED_LIBS =   Qt5Qml                    4.1 # 5.9
SHARED_LIBS +=  Qt5Quick                  6.1 # 5.9
SHARED_LIBS +=  Qt5QuickParticles         3.0 # 5.9
SHARED_LIBS +=  Qt5QuickTest              3.0 # 5.9
SHARED_LIBS +=  Qt5QuickWidgets           3.0 # 5.9
SHARED_LIBS +=  Qt5QuickShapes            0.0 # 5.13
SHARED_LIBS +=  Qt5QmlModels              0.1 # 5.15
SHARED_LIBS +=  Qt5QmlWorkerScript        0.0 # 5.15

WANTLIB-main += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Sql
WANTLIB-main += Qt5Test Qt5Widgets c m

MODULES =		lang/python
MODPY_RUNDEP =		No

LIB_DEPENDS =		x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}

LIB_DEPENDS-examples =	${LIB_DEPENDS} \
			x11/qt5/qtxmlpatterns>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS-examples =	x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

TEST_DEPENDS =		x11/qt5/qtxmlpatterns>=${QT5_VERSION},<${QT5_NEXT_VERSION}

# bootstrap model is used due to:
#  1) circular dependency with qtmultimedia (used by qtdeclarative-examples);
#  2) circular dependency with qttools-examples;
#  3) circular dependency with qtxmlpatterns (used by xmllistmodel plugin,
#     examples and tests).

FLAVORS =		debug
PSEUDO_FLAVORS =	bootstrap no_examples no_tests
FLAVOR ?=		bootstrap no_examples no_tests

# Do not use bsd.port.arch.mk here: it's already used by Makefile.inc,
# and the latter does some magic with BUILD_PACKAGES as well.

# avoid circular dependency with qttools
.if ${FLAVOR:Mno_examples}
MODQT5_DEPS =		No
.endif

MODQMAKE_RECURSIVE =	No

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
