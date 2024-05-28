COMMENT =	thumbnailers for various graphics file formats
DISTNAME =	kdegraphics-thumbnailers-${VERSION}
PKGNAME =	kf6-kdegraphics-thumbnailers-${VERSION}
CATEGORIES =	devel graphics
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL KDcrawQt6 KExiv2Qt6 KF6Archive
WANTLIB += KF6ConfigCore KF6CoreAddons KF6KIOCore KF6KIOGui KF6Service
WANTLIB += QMobipocket6 Qt6Core Qt6DBus Qt6Gui Qt6Network m

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kio \
		devel/kf6/kservice \
		x11/kde-applications/kf6-kdegraphics-mobipocket>=${MODKDE_VERSION} \
		x11/kde-applications/kf6-libkdcraw>=${MODKDE_VERSION} \
		x11/kde-applications/kf6-libkexiv2>=${MODKDE_VERSION}

.include <bsd.port.mk>
