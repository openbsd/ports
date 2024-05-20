COMMENT =	KDE PIM SMTP library
DISTNAME =	ksmtp-${VERSION}
CATEGORIES =	devel mail

HOMEPAGE =	https://kontact.kde.org/

SHARED_LIBS +=	KPim6SMTP                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6CoreAddons KF6I18n KF6KIOCore
WANTLIB += Qt6Core Qt6DBus Qt6Network m sasl2

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	 \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		security/cyrus-sasl2

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
