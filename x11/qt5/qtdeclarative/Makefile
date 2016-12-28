# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:23 zhuk Exp $

QT5NAME =		QtDeclarative
COMMENT-main =		Qt5 Quick and QML components
REVISION-qch =		0
REVISION-html =		0

MULTI_PACKAGES =	-main -examples -qch -html -docindex
DPB_PROPERTIES =	parallel

SHARED_LIBS =		Qt5Qml			2.0
SHARED_LIBS +=		Qt5Quick		2.0
SHARED_LIBS +=		Qt5QuickParticles	2.0
SHARED_LIBS +=		Qt5QuickTest		2.0
SHARED_LIBS +=		Qt5QuickWidgets		2.0

WANTLIB-main =  	${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5Gui Qt5Network Qt5Sql Qt5Test Qt5Widgets
WANTLIB-main +=		c m pthread

MODULES =		lang/python
MODPY_RUNDEP =		No

RUN_DEPENDS-examples =	x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

# bootstrap model is used due to:
#  1) circular dependency with qtmultimedia (used by qtdeclarative-examples);
#  2) circular dependency with qttools-examples.

FLAVORS =		debug
PSEUDO_FLAVORS =	bootstrap no_examples no_qch no_html
FLAVOR ?=		bootstrap no_examples no_qch no_html

# avoid circular dependency with qttools
.if ${FLAVOR:Mno_examples} && ${FLAVOR:Mno_qch} && ${FLAVOR:Mno_html}
MODQT5_DEPS =		No
LIB_DEPENDS =		x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}
.endif

# Python is used for building, this path does not get into final packages.
pre-configure:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
