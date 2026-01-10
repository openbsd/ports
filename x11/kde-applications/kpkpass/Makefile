COMMENT =	KDE PIM Apple wallet file support library
DISTNAME =	kpkpass-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6PkPass               0.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6Qml m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/karchive \
		x11/qt6/qtdeclarative
RUN_DEPENDS =	misc/shared-mime-info

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
