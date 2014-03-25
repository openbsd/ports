# $OpenBSD: gnome.port.mk,v 1.77 2014/03/25 09:39:17 ajacoutot Exp $
#
# Module for GNOME related ports

.if (defined(GNOME_PROJECT) && defined(GNOME_VERSION))
DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
VERSION=		${GNOME_VERSION}
HOMEPAGE?=		https://wiki.gnome.org/
MASTER_SITES?=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX?=		.tar.xz
CATEGORIES+=		x11/gnome
.endif

.if ${NO_BUILD:L} == "no"
MODULES+=		textproc/intltool
.   if defined(CONFIGURE_STYLE) && ${CONFIGURE_STYLE:Mgnu}
        CONFIGURE_ARGS += ${CONFIGURE_SHARED}
      # https://mail.gnome.org/archives/desktop-devel-list/2011-September/msg00064.html
.     if !defined(AUTOCONF_VERSION) && !defined(AUTOMAKE_VERSION)
          CONFIGURE_ARGS += --disable-maintainer-mode
.     endif
        # If a port needs extra CPPFLAGS, they can just set MODGNOME_CPPFLAGS
        # to the desired value, like -I${X11BASE}/include
        _MODGNOME_cppflags ?= CPPFLAGS="-I${LOCALBASE}/include ${MODGNOME_CPPFLAGS}"
        _MODGNOME_ldflags ?= LDFLAGS="-L${LOCALBASE}/lib ${MODGNOME_LDFLAGS}"
        CONFIGURE_ENV += ${_MODGNOME_cppflags} \
                         ${_MODGNOME_ldflags}
        # If one of these tools is found at configure stage, it might be used, no
        # matter whether we use --disable-gtk-doc or not.
.       if !defined(MODGNOME_TOOLS) || defined(MODGNOME_TOOLS) && ! ${MODGNOME_TOOLS:Mgtk-doc}
            CONFIGURE_ENV += ac_cv_path_GTKDOC_CHECK="" \
                             ac_cv_path_GTKDOC_REBASE="" \
                             ac_cv_path_GTKDOC_MKPDF=""
.       endif
.   endif
.endif

# Set to 'yes' if there are .desktop files under share/applications/.
# Requires the following goo in PLIST:
# @exec %D/bin/update-desktop-database
# @unexec-delete %D/bin/update-desktop-database
.if defined(MODGNOME_DESKTOP_FILE) && ${MODGNOME_DESKTOP_FILE:L} == "yes"
MODGNOME_RUN_DEPENDS+=	devel/desktop-file-utils
MODGNOME_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/desktop-file-validate;
.endif

# Set to 'yes' if there are icon files under share/icons/.
# Requires the following goo in PLIST (adapt $icon-theme accordingly):
# @exec %D/bin/gtk-update-icon-cache -q -t %D/share/icons/$icon-theme
# @unexec-delete %D/bin/gtk-update-icon-cache -q -t %D/share/icons/$icon-theme
.if defined(MODGNOME_ICON_CACHE) && ${MODGNOME_ICON_CACHE:L} == "yes"
MODGNOME_RUN_DEPENDS+=	x11/gtk+2,-guic
.endif

# Set to 'yes' if there are .xml files under share/mime/.
# Requires the following goo in PLIST:
# @exec %D/bin/update-mime-database %D/share/mime
# @unexec-delete %D/bin/update-mime-database %D/share/mime
.if defined(MODGNOME_MIME_FILE) && ${MODGNOME_MIME_FILE:L} == "yes"
MODGNOME_RUN_DEPENDS+=	misc/shared-mime-info
MODGNOME_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/update-mime-database;
.endif

USE_GMAKE?=		Yes

# Use MODGNOME_TOOLS to indicate certain tools are needed for building bindings
# or for ensuring documentation is available. If an option is not set, it's
# explicitly disabled.
# Currently supported tools are:
# * gi: Build and enable GObject Introspection data.
# * gtk-doc: Enable to build the included docs.
# * vala: Enable vala bindings.
# * yelp: Use this if there are any files under share/gnome/help/
#         or "page" files under share/help/ in the PLIST that are opened
#         with yelp -- gnome-doc-utils is here to make sure we have a
#         dependency on rarian (and legacy scrollkeeper-*) and have
#         access to the gnome-doc-* tools (legacy);
#         same goes with yelp-tools which gives us itstool.
# Please note that if you're using multi-packages, you have to use the
# MODGNOME_RUN_DEPENDS_${tool} in your multi package RUN_DEPENDS.

MODGNOME_CONFIGURE_ARGS_gtkdoc=--disable-gtk-doc
MODGNOME_CONFIGURE_ARGS_gi=--disable-introspection
MODGNOME_CONFIGURE_ARGS_vala=--disable-vala --disable-vala-bindings

.if defined(MODGNOME_TOOLS)
.   if ${MODGNOME_TOOLS:Mgi}
        MODGNOME_CONFIGURE_ARGS_gi=--enable-introspection
        MODGNOME_BUILD_DEPENDS+=devel/gobject-introspection>=1.38.0
.   endif

.   if ${MODGNOME_TOOLS:Mgtk-doc}
        MODGNOME_CONFIGURE_ARGS_gtkdoc=--enable-gtk-doc
        MODGNOME_BUILD_DEPENDS+=textproc/gtk-doc
.   endif

.   if ${MODGNOME_TOOLS:Mvala}
        MODGNOME_CONFIGURE_ARGS_vala=--enable-vala --enable-vala-bindings
        MODGNOME_BUILD_DEPENDS+=lang/vala>=0.24.0
.   endif

.   if ${MODGNOME_TOOLS:Myelp}
        MODGNOME_BUILD_DEPENDS+=x11/gnome/yelp-tools
        MODGNOME_BUILD_DEPENDS+=x11/gnome/doc-utils>=0.20.10p2
        # automatically try to detect GUI applications
.       if defined(MODGNOME_DESKTOP_FILE) && ${MODGNOME_DESKTOP_FILE:L} == "yes"
            MODGNOME_RUN_DEPENDS+=x11/gnome/yelp
.       endif
.   endif
.endif

CONFIGURE_ARGS+=${MODGNOME_CONFIGURE_ARGS_gi} \
		${MODGNOME_CONFIGURE_ARGS_gtkdoc} \
		${MODGNOME_CONFIGURE_ARGS_vala}

.if defined(MODGNOME_BUILD_DEPENDS)
BUILD_DEPENDS+=		${MODGNOME_BUILD_DEPENDS}
.endif

.if defined(MODGNOME_RUN_DEPENDS)
RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}
.endif
