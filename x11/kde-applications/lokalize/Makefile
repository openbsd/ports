# $OpenBSD: Makefile,v 1.13 2021/11/10 06:37:56 rsadowski Exp $

COMMENT =	KDE app localization tools
DISTNAME =	lokalize-${VERSION}
CATEGORIES =	x11 devel

HOMEPAGE =	https://kde.org/applications/office/org.kde.lokalize

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	lang/python

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kross \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		textproc/hunspell \
		x11/qt5/qtscript

MODPY_ADJ_FILES =	scripts/xliffmerge.py

post-install:
	find ${PREFIX}/share/lokalize/scripts/odf \
		-type f -name \*.py -exec ${MODPY_BIN_ADJ} {} +

.include <bsd.port.mk>
