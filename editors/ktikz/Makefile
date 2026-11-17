COMMENT =		editor for the TikZ language

GH_ACCOUNT =		fhackenberger
GH_PROJECT =		ktikz
GH_COMMIT =		0a575c2246556adeecbc7b41be56e6d2e7eb6a42

DISTNAME =		KtikZ-0.13.3pre0

CATEGORIES =		editors

HOMEPAGE =		https://www.hackenberger.at/blog/ktikz-editor-for-the-tikz-language/

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Parts KF6Service KF6Solid KF6SyntaxHighlighting
WANTLIB += KF6TextEditor KF6WidgetsAddons KF6XmlGui Qt6Core Qt6Core5Compat
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6PrintSupport Qt6Widgets
WANTLIB += Qt6Xml c m poppler poppler-qt6

MODULES =		devel/kf6

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		print/texlive/base \
			print/poppler,-utils \
			misc/shared-mime-info \
			devel/desktop-file-utils

LIB_DEPENDS =		devel/kf6/kbookmarks \
			devel/kf6/kcolorscheme \
			devel/kf6/kcompletion \
			devel/kf6/kconfig \
			devel/kf6/kconfigwidgets \
			devel/kf6/kcoreaddons \
			devel/kf6/kguiaddons \
			devel/kf6/ki18n \
			devel/kf6/kiconthemes \
			devel/kf6/kio \
			devel/kf6/kitemviews \
			devel/kf6/kjobwidgets \
			devel/kf6/kparts \
			devel/kf6/kservice \
			devel/kf6/ktexteditor \
			devel/kf6/kwidgetsaddons \
			devel/kf6/kxmlgui \
			devel/kf6/solid \
			devel/kf6/syntax-highlighting \
			print/poppler,-qt6 \
			x11/qt6/qt5compat

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

CONFIGURE_ARGS =	-DDATA_INSTALL_DIR=${LOCALBASE}/share \
			-DKDE_INSTALL_MANDIR=${LOCALBASE}/man

NO_TEST =		Yes

.include <bsd.port.mk>
