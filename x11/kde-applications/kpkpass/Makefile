COMMENT =	KDE PIM Apple wallet file support library
DISTNAME =	kpkpass-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6PkPass               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive Qt6Core Qt6Gui m

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/karchive
RUN_DEPENDS =	misc/shared-mime-info

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
