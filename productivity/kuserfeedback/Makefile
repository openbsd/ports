COMMENT =	KDE framework for collecting user feedback
#
GH_ACCOUNT =	KDE
GH_PROJECT =	kuserfeedback
GH_TAGNAME =	v1.2.0

SHARED_LIBS =	KUserFeedbackCore	0.1
SHARED_LIBS +=	KUserFeedbackWidgets	0.0

CATEGORIES =	productivity

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Charts Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Svg Qt5Widgets c m

MODULES =		devel/kf5

EXTRACT_SUFX =		.tar.gz

LIB_DEPENDS =	x11/qt5/qtcharts \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
