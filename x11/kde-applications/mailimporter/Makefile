# $OpenBSD: Makefile,v 1.2 2020/06/21 18:12:54 rsadowski Exp $

COMMENT =	KDE PIM mail importer library
DISTNAME =	mailimporter-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5MailImporter              0.0 # 5.13.2
SHARED_LIBS +=  KF5MailImporterAkonadi       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5AkonadiMime KF5Archive
WANTLIB += KF5ConfigCore KF5CoreAddons KF5I18n KF5ItemModels KF5Libkdepim
WANTLIB += KF5Mime Qt5Core Qt5Gui Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes

MODULES =	x11/kde-applications

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		x11/kde-applications/libkdepim \
		x11/kde-applications/akonadi \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
