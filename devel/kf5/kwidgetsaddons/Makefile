COMMENT =		large set of KDE widgets
DISTNAME =		kwidgetsaddons-${VERSION}

SHARED_LIBS =		KF5WidgetsAddons	6.7

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

#The following tests FAILED:
#13 - kmessagewidgetautotest (Failed)
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
