# $OpenBSD: gnome.port.mk,v 1.33 2010/10/24 21:12:47 ajacoutot Exp $
#
# Module for GNOME related ports
#

.if (defined(GNOME_PROJECT) && defined(GNOME_VERSION))
DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
VERSION=		${GNOME_VERSION}
MASTER_SITES?=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX?=		.tar.bz2
CATEGORIES+=		x11/gnome
.endif

.if ${NO_BUILD:L} == "no"
USE_LIBTOOL?=		Yes
MODULES+=		textproc/intltool
.endif

# Set to 'yes' if there are .desktop files in the package list.
.if defined(DESKTOP_FILES) && ${DESKTOP_FILES:L} == "yes"
MODGNOME_RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
.endif

# Set to 'yes' if there are .xml GNOME help files under
# share/gnome/help/ in the package list.
.if defined(MODGNOME_HELP_FILES) && ${MODGNOME_HELP_FILES:L} == "yes"
MODGNOME_BUILD_DEPENDS+= ::x11/gnome/doc-utils
MODGNOME_RUN_DEPENDS+=	:yelp-*:x11/gnome/yelp
.endif

.if defined(MODGNOME_BUILD_DEPENDS)
BUILD_DEPENDS+=		${MODGNOME_BUILD_DEPENDS}
.endif

.if defined(MODGNOME_RUN_DEPENDS)
RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}
.endif

USE_GMAKE?=		Yes

# Disable "silent rules" aka clean build output (CC $FILE)
.if defined(CONFIGURE_STYLE)
. if ${CONFIGURE_STYLE:L:Mgnu} || ${CONFIGURE_STYLE:L:Mautoconf}
  CONFIGURE_ARGS+=	--disable-silent-rules
. endif
.endif
