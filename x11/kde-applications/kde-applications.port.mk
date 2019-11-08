# $OpenBSD: kde-applications.port.mk,v 1.4 2019/11/08 13:38:38 rsadowski Exp $

# Module for KDE applications related ports, divided into 16 categories:
# - accessibility
# - admin
# - base
# - education
# - games
# - graphics
# - multimedia
# - internet / network
# - pim
# - kdesdk
# - utilities
# - webdev
# - KDE-Telepathy
# - development environment
# - KDE4
# - Former projects under the hat of KDE Applications

MODULES :=		devel/kf5 ${MODULES}
VERSION ?=		18.12.0
MASTER_SITES ?=		${MASTER_SITE_KDE:=Attic/applications/${VERSION}/src/}

# Set to 'yes' if there are .desktop files under share/applications/.
.if defined(MODKDE5_DESKTOP_FILE) && ${MODKDE5_DESKTOP_FILE:L} == "yes"
MODKDE5_RUN_DEPENDS +=		devel/desktop-file-utils
.endif

# Set to 'yes' if there are icon files under share/icons/.
.if defined(MODKDE5_ICON_CACHE) && ${MODKDE5_ICON_CACHE:L} == "yes"
MODKDE5_RUN_DEPENDS +=		x11/gtk+3,-guic
.endif

# Set to 'yes' if there are icon files under share/locale/.
.if defined(MODKDE5_TRANSLATIONS) && ${MODKDE5_TRANSLATIONS:L} == "yes"
MODKDE5_BUILD_DEPENDS +=	devel/gettext,-tools
.endif

# Set to 'yes' if there are icon files under share/doc/.
.if defined(MODKDE5_DOCS) && ${MODKDE5_DOCS:L} == "yes"
MODKDE5_BUILD_DEPENDS +=	devel/kf5/kdoctools
MODKDE5_RUN_DEPENDS +=		devel/kf5/kdoctools
.endif

RUN_DEPENDS+=	${MODKDE5_RUN_DEPENDS}
BUILD_DEPENDS+=	${MODKDE5_BUILD_DEPENDS}
