COMMENT =	KDE wrapper over doas commands
DISTNAME =	kdesu-${VERSION}

SHARED_LIBS =	KF5Su		6.1

WANTLIB += ${COMPILER_LIBCXX} ICE KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5Pty KF5Service Qt5Core SM X11 Xext c m

MODULES +=	lang/python

# required only for tests
MODPY_BUILDDEP =	Yes
MODPY_RUNDEP =		No

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kpty>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION}

CONFIGURE_ARGS +=	-DKDESU_USE_DOAS_DEFAULT=Yes

TEST_IS_INTERACTIVE =	X11

pre-configure:
	sed -i -e "s,/usr/bin/python3,${MODPY_BIN},g;" \
		${WRKSRC}/autotests/su \
		${WRKSRC}/autotests/sudo

.include <bsd.port.mk>
