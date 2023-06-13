COMMENT =	thumbnailers for various graphics file formats
DISTNAME =	kdegraphics-thumbnailers-${VERSION}
PKGNAME =	kdegraphics-thumbnailers-kf5-${VERSION}
CATEGORIES =	devel graphics

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5ConfigCore KF5CoreAddons
WANTLIB += KF5KDcraw KF5KExiv2 KF5KIOCore KF5KIOGui KF5Service
WANTLIB += KF5WindowSystem Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets X11 m qmobipocket

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kio \
		devel/kf5/kservice \
		x11/kde-applications/libkdcraw \
		x11/kde-applications/kdegraphics-mobipocket \
		x11/kde-applications/libkexiv2

.include <bsd.port.mk>
