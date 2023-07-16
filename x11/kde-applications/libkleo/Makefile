COMMENT =	certificate manager for KDE
DISTNAME =	libkleo-${VERSION}
CATEGORIES =	security devel

SHARED_LIBS +=  KPim5Libkleo              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5ItemModels KF5TextEditTextToSpeech KF5WidgetsAddons
WANTLIB += KPim5TextEdit Qt5Core Qt5Gui Qt5Widgets Qt5Xml assuan
WANTLIB += gpgme gpgmepp m qgpgme

WANTLIB += lib/inotify/inotify



MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kwidgetsaddons \
		security/gpgme,-qt \
		textproc/ktextaddons \
		devel/libinotify \
		x11/kde-applications/kpimtextedit

.include <bsd.port.mk>
