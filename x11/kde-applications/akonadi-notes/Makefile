COMMENT =	PIM Akonadi notes support library
DISTNAME =	akonadi-notes-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5AkonadiNotes       1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5I18n KF5Mime Qt5Core Qt5Xml m

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf5/kcodecs

LIB_DEPENDS =	devel/kf5/ki18n \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
