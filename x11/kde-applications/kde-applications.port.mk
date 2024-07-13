MODKDE_VERSION ?=		24.05.2

MODKDE_KF5 ?=			No

# Set to 'yes' if there are .desktop files under share/release-service/.
.if defined(MODKDE_DESKTOP_FILE) && ${MODKDE_DESKTOP_FILE:L} == "yes"
MODKDE_RUN_DEPENDS +=		devel/desktop-file-utils
.endif

# Set to 'yes' if there are icon files under share/icons/.
.if defined(MODKDE_ICON_CACHE) && ${MODKDE_ICON_CACHE:L} == "yes"
MODKDE_RUN_DEPENDS +=		x11/gtk+4,-guic
.endif

# Set to 'yes' if there are icon files under share/locale/.
.if defined(MODKDE_TRANSLATIONS) && ${MODKDE_TRANSLATIONS:L} == "yes"
MODKDE_BUILD_DEPENDS +=		devel/gettext,-tools
.endif

# Set to 'yes' if there are icon files under share/doc/.
.if defined(MODKDE_DOCS) && ${MODKDE_DOCS:L} == "yes"
.if ${MODKDE_KF5:L} == "yes"
MODKDE_BUILD_DEPENDS +=		devel/kf5/kdoctools
MODKDE_RUN_DEPENDS +=		devel/kf5/kdoctools
.else
MODKDE_BUILD_DEPENDS +=		devel/kf6/kdoctools
MODKDE_RUN_DEPENDS +=		devel/kf6/kdoctools
.endif
.endif
