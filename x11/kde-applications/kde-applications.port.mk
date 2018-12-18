# $OpenBSD: kde-applications.port.mk,v 1.1 2018/12/18 09:39:17 rsadowski Exp $

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
MODKDE5_BUILD_DEPENDS +=	devel/gettext-tools
.endif

# Set to 'yes' if there are icon files under share/doc/.
.if defined(MODKDE5_DOCS) && ${MODKDE5_DOCS:L} == "yes"
MODKDE5_BUILD_DEPENDS +=	devel/kf5/kdoctools
MODKDE5_RUN_DEPENDS +=		devel/kf5/kdoctools
.endif

KDE5 ?=			No
.if ${KDE5:L} == "yes"
MODULES :=		devel/kf5 ${MODULES}
VERSION ?=		18.12.0
MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/applications/${VERSION}/src/}
.else
MODULES :=		x11/kde4 ${MODULES}
VERSION ?=		15.08.3
MASTER_SITES ?=		${MASTER_SITE_KDE:=Attic/applications/${VERSION}/src/}
.endif

RUN_DEPENDS+=	${MODKDE5_RUN_DEPENDS}
BUILD_DEPENDS+=	${MODKDE5_BUILD_DEPENDS}
