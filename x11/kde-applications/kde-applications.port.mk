MODKDE_VERSION ?=		24.02.1

MODKDE_KF5 ?=			No

# Set to 'yes' if there are .desktop files under share/release-service/.
.if defined(MODKDE5_DESKTOP_FILE) && ${MODKDE5_DESKTOP_FILE:L} == "yes"
MODKDE5_RUN_DEPENDS +=		devel/desktop-file-utils
.endif

# Set to 'yes' if there are icon files under share/icons/.
.if defined(MODKDE5_ICON_CACHE) && ${MODKDE5_ICON_CACHE:L} == "yes"
MODKDE5_RUN_DEPENDS +=		x11/gtk+4,-guic
.endif

# Set to 'yes' if there are icon files under share/locale/.
.if defined(MODKDE5_TRANSLATIONS) && ${MODKDE5_TRANSLATIONS:L} == "yes"
MODKDE5_BUILD_DEPENDS +=	devel/gettext,-tools
.endif

# Set to 'yes' if there are icon files under share/doc/.
.if defined(MODKDE5_DOCS) && ${MODKDE5_DOCS:L} == "yes"
.if ${MODKDE_KF5:L} == "yes"
MODKDE5_BUILD_DEPENDS +=	devel/kf5/kdoctools
MODKDE5_RUN_DEPENDS +=		devel/kf5/kdoctools
.else
MODKDE5_BUILD_DEPENDS +=	devel/kf6/kdoctools
MODKDE5_RUN_DEPENDS +=		devel/kf6/kdoctools
.endif
.endif
