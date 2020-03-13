# $OpenBSD: Makefile,v 1.14 2020/03/13 16:53:50 rsadowski Exp $

# qmlplugindump
USE_WXNEEDED =		Yes

QT5NAME =		QtDeclarative
COMMENT-main =		Qt5 Quick and QML components

MULTI_PACKAGES =	-main -examples
DPB_PROPERTIES =	parallel

SHARED_LIBS =   Qt5Qml                    3.0 # 5.9
SHARED_LIBS +=  Qt5Quick                  3.0 # 5.9
SHARED_LIBS +=  Qt5QuickParticles         3.0 # 5.9
SHARED_LIBS +=  Qt5QuickTest              3.0 # 5.9
SHARED_LIBS +=  Qt5QuickWidgets           3.0 # 5.9
SHARED_LIBS +=  Qt5QuickShapes            0.0 # 5.13

WANTLIB-main =		${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main +=		GL Qt5Core Qt5Gui Qt5Network Qt5Sql Qt5Test Qt5Widgets
WANTLIB-main +=		c m pthread

MODULES =		lang/python
MODPY_RUNDEP =		No

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
LIB_DEPENDS =		x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}
.endif

MODQMAKE_RECURSIVE =	No

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
