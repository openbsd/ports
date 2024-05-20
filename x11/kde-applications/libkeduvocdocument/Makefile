COMMENT =	library for reading and writing vocabulary
DISTNAME =	libkeduvocdocument-${VERSION}
CATEGORIES =	education x11

SHARED_LIBS +=  KEduVocDocument           3.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF6Archive KF6CoreAddons KF6I18n
WANTLIB += KF6KIOCore Qt6Core Qt6DBus Qt6Network Qt6Xml m

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
