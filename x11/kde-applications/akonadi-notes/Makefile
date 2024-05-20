COMMENT =	PIM Akonadi notes support library
DISTNAME =	akonadi-notes-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=	KPim6AkonadiNotes         0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6I18n KPim6Mime Qt6Core Qt6Xml
WANTLIB += m

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf6/kcodecs

LIB_DEPENDS =	devel/kf6/ki18n \
		x11/kde-applications/kmime>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
