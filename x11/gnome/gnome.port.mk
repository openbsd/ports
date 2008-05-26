# $OpenBSD: gnome.port.mk,v 1.17 2008/05/26 13:23:34 ajacoutot Exp $
#
# Module for GNOME related ports
#

CATEGORIES+=		x11/gnome

DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
VERSION=		${GNOME_VERSION}

.if ${NO_BUILD:L} == "no"
USE_LIBTOOL?=		Yes
MODULES+=		textproc/intltool
.endif

# Set to 'yes' if there are .desktop files in the package list.
.if defined(DESKTOP_FILES) && ${DESKTOP_FILES:L} == "yes"
MODGNOME_RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
.endif

# Set to 'yes' if there are .devhelp files in the package list.
.if defined(MODGNOME_DEVHELP_FILES) && ${MODGNOME_DEVHELP_FILES:L} == "yes"
MODGNOME_RUN_DEPENDS+=	:devhelp-*:x11/gnome/devhelp
.endif

# Set to 'yes' if there are .xml GNOME help files under
# share/gnome/help/ in the package list.
.if defined(MODGNOME_HELP_FILES) && ${MODGNOME_HELP_FILES:L} == "yes"
MODGNOME_RUN_DEPENDS+=	:yelp-*:x11/gnome/yelp
.endif

.if defined(MODGNOME_RUN_DEPENDS)
RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}
.endif

MASTER_SITES?=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:R}/}
EXTRACT_SUFX?=		.tar.bz2

USE_GMAKE?=		Yes

#ifdef notyet
#CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/${PROJECT}/
#			--disable-schemas-install \
#			--disable-scrollkeeper
#endif
