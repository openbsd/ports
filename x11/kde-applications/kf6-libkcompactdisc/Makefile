UNLINKED =	kf6
COMMENT =	library for interfacing with CDs

DISTNAME =	libkcompactdisc-${VERSION}
PKGNAME =	kf6-libkcompactdisc-${VERSION}

CATEGORIES =	devel multimedia

SHARED_LIBS +=	KCompactDisc6             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6I18n KF6Solid Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Widgets m phonon4qt6

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/ki18n \
		devel/kf6/solid \
		multimedia/phonon,qt6

.include <bsd.port.mk>
