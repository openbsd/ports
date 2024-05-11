UNLINKED = kf6
COMMENT =	KDE wrapper over doas commands
DISTNAME =	kdesu-${VERSION}

SHARED_LIBS +=  KF6Su                     0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF6ConfigCore KF6CoreAddons
WANTLIB += KF6I18n KF6Pty Qt6Core SM X11 Xext c m

MODULES +=	lang/python
# required only for tests
MODPY_BUILDDEP =	Yes
MODPY_RUNDEP =		No

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kpty>=${MODKF6_VERSION}

CONFIGURE_ARGS +=	-DKDESU_USE_DOAS_DEFAULT=Yes

TEST_IS_INTERACTIVE =	X11

pre-configure:
	sed -i -e "s,/usr/bin/python3,${MODPY_BIN},g;" \
		${WRKSRC}/autotests/su \
		${WRKSRC}/autotests/sudo

.include <bsd.port.mk>
