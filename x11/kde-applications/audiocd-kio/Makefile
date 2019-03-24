# $OpenBSD: Makefile,v 1.4 2019/03/24 11:56:58 rsadowski Exp $

COMMENT =	Kio slave for accessing audio CDs
DISTNAME =	audiocd-kio-${VERSION}
PKGNAME =	audiocd-kio-kf5-${VERSION}
CATEGORIES =	devel audio
REVISION =	0


SHARED_LIBS +=  audiocdplugins            0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} FLAC KF5Auth KF5Cddb KF5Codecs KF5CompactDisc
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5KCMUtils KF5KIOCore KF5Service KF5Solid
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml cdda_interface cdda_paranoia
WANTLIB += m ogg phonon4qt5 vorbis vorbisenc vorbisfile

MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	audio/cdparanoia \
		audio/flac \
		audio/libvorbis \
		devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/solid \
		x11/kde-applications/libkcddb \
		x11/kde-applications/libkcompactdisc

.include <bsd.port.mk>
