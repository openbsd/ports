UNLINKED = kf6
COMMENT =	KDE framework for aggregating and accessing people contacts
DISTNAME =	kpeople-${VERSION}

SHARED_LIBS +=  KF6People                 0.0 # 0.0
SHARED_LIBS +=  KF6PeopleBackend          0.0 # 0.0
SHARED_LIBS +=  KF6PeopleWidgets          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Contacts KF6CoreAddons KF6I18n
WANTLIB += KF6ItemViews KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Sql
WANTLIB += Qt6Widgets m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kitemviews>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/kcontacts>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
