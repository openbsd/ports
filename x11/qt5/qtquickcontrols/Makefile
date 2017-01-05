# $OpenBSD: Makefile,v 1.4 2017/01/05 09:52:36 zhuk Exp $

QT5NAME =		QtQuickControls
COMMENT-main =		Qt Quick based UI controls
REVISION-qch =		0
REVISION-html =		1

# XXX need to figure why qdoc sometimes doesn't generate
# the qml-qtquick-controls-stackview-obsolete.html file;
# this is not a dependency issue.

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =		GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Widgets
WANTLIB +=		m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.if !${FLAVOR:Mno_html}
BUILD_DEPENDS =		x11/qt5/qtdoc,-docindex \
			x11/qt5/qtgraphicaleffects,-docindex
.endif

.include <bsd.port.mk>
