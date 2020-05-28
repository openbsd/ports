# $OpenBSD: gnome.port.mk,v 1.116 2020/05/28 17:43:31 kmos Exp $
#
# Module for GNOME related ports

.if (defined(GNOME_PROJECT) && defined(GNOME_VERSION)) || \
    (defined(MATE_PROJECT) && defined(MATE_VERSION))
PORTROACH +=		limitw:1,even
EXTRACT_SUFX ?=		.tar.xz
.  if (defined(GNOME_PROJECT) && defined(GNOME_VERSION))
DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
VERSION=		${GNOME_VERSION}
HOMEPAGE ?=		https://wiki.gnome.org/
MASTER_SITES ?=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
CATEGORIES +=		x11/gnome
.  elif (defined(MATE_PROJECT) && defined(MATE_VERSION))
DISTNAME=		${MATE_PROJECT}-${MATE_VERSION}
VERSION=		${MATE_VERSION}
HOMEPAGE ?=		http://mate-desktop.org/
MASTER_SITES ?=		http://pub.mate-desktop.org/releases/${MATE_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/
CATEGORIES +=		x11/mate
.  endif
.  if ${NO_BUILD:L} == "no"
MODULES+=		textproc/intltool
.    if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
USE_GMAKE?=		Yes
.    endif
.  endif
.endif

.if defined(BUILD_DEPENDS) && !${BUILD_DEPENDS:Mdevel/appstream-glib}
MODGNOME_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/appstream-util;
.endif

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
.  if !defined(AUTOCONF_VERSION) && !defined(AUTOMAKE_VERSION)
# https://mail.gnome.org/archives/desktop-devel-list/2011-September/msg00064.html
CONFIGURE_ARGS += --disable-maintainer-mode
.  endif
.endif

.if ${CONFIGURE_STYLE:Mcmake}
CONFIGURE_ARGS += -DENABLE_MAINTAINER_MODE=OFF
CONFIGURE_ARGS += -DSYSCONF_INSTALL_DIR=${SYSCONFDIR}
# matches what bsd.port.mk does (--disable-gtk-doc)
.  if !defined(BUILD_DEPENDS) || !${BUILD_DEPENDS:Mtextproc/gtk-doc}
CONFIGURE_ARGS += -DENABLE_GTK_DOC=OFF
.  endif
# not in the devel/dconf because the flag is not consistent between projects
.  if ${MODULES:Mdevel/dconf}
CONFIGURE_ARGS += -DENABLE_SCHEMAS_COMPILE=OFF
.  endif
# cmake looks for "python"
.  if ${MODULES:Mlang/python}
MODGNOME_pre-configure += ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python;
.  endif
.endif

# Use MODGNOME_TOOLS to indicate certain tools are needed for building bindings
# or for ensuring documentation is available. If an option is not set, it's
# explicitly disabled.
# Currently supported tools are:
# * desktop-file-utils: Use this if there are .desktop files under
#                       share/applications/. This also requires the following
#                       go in PLIST:
#                       @exec %D/bin/update-desktop-database
#                       @unexec-delete %D/bin/update-desktop-database
# * docbook: Build man pages with docbook.
# * gobject-introspection: Build and enable GObject Introspection data.
# * gtk-update-icon-cache: Enable if there are icon files under share/icons/.
#                          Requires the following tag in PLIST (adapt
#                          $icon-theme accordingly):
#                          @tag gtk-update-icon-cache %D/share/icons/$icon-theme
# * shared-mime-info: Enable if there are .xml files under share/mime/.
#                     Requires the following tag in PLIST:
#                     @tag update-mime-database
# * vala: Enable vala bindings and/or building from vala source files.
# * yelp: Use this if there are any files under share/gnome/help/
#         or "page" files under share/help/ in the PLIST that are opened
#         with yelp -- gnome-doc-utils is here to make sure we have a
#         dependency on rarian (and legacy scrollkeeper-*) and have
#         access to the gnome-doc-* tools (legacy);
#         same goes with yelp-tools which gives us itstool.

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
MODGNOME_CONFIGURE_ARGS_gi=	--disable-introspection
MODGNOME_CONFIGURE_ARGS_vala=	--disable-vala --disable-vala-bindings
.elif ${CONFIGURE_STYLE:Mcmake}
MODGNOME_CONFIGURE_ARGS_gi=	-DENABLE_INTROSPECTION=OFF
MODGNOME_CONFIGURE_ARGS_vala=	-DENABLE_VALA_BINDINGS=OFF
.endif

.if defined(MODGNOME_TOOLS)
_VALID_TOOLS=desktop-file-utils docbook gobject-introspection \
    gtk-update-icon-cache shared-mime-info vala yelp
.   for _t in ${MODGNOME_TOOLS}
.       if !${_VALID_TOOLS:M${_t}}
ERRORS += "Fatal: unknown MODGNOME_TOOLS option: ${_t}\n(not in ${_VALID_TOOLS})"
.       endif
.   endfor

.   if ${MODGNOME_TOOLS:Mdesktop-file-utils}
MODGNOME_RUN_DEPENDS +=	devel/desktop-file-utils
MODGNOME_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/desktop-file-validate;
.   endif

.   if ${MODGNOME_TOOLS:Mdocbook}
MODGNOME_BUILD_DEPENDS +=	textproc/docbook-xsl
.   endif

.   if ${MODGNOME_TOOLS:Mgobject-introspection}
.       if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
MODGNOME_CONFIGURE_ARGS_gi=	--enable-introspection
.       elif ${CONFIGURE_STYLE:Mcmake}
MODGNOME_CONFIGURE_ARGS_gi=	-DENABLE_INTROSPECTION=ON
.       endif
MODGNOME_BUILD_DEPENDS +=	devel/gobject-introspection
.   endif

.   if ${MODGNOME_TOOLS:Mgtk-update-icon-cache}
MODGNOME_RUN_DEPENDS +=	x11/gtk+3,-guic
.   endif

.   if ${MODGNOME_TOOLS:Mshared-mime-info}
MODGNOME_RUN_DEPENDS +=	misc/shared-mime-info
MODGNOME_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/update-mime-database;
.   endif

.   if ${MODGNOME_TOOLS:Mvala}
.       if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
MODGNOME_CONFIGURE_ARGS_vala=	--enable-vala --enable-vala-bindings
.       elif ${CONFIGURE_STYLE:Mcmake}
MODGNOME_CONFIGURE_ARGS_vala=	-DENABLE_VALA_BINDINGS=ON
.       endif
MODGNOME_BUILD_DEPENDS +=	lang/vala
.   endif

.   if ${MODGNOME_TOOLS:Myelp}
MODGNOME_BUILD_DEPENDS +=	x11/gnome/yelp-tools
MODGNOME_BUILD_DEPENDS +=	x11/gnome/doc-utils
# automatically try to detect GUI applications
.       if ${MODGNOME_TOOLS:Mdesktop-file-utils}
MODGNOME_RUN_DEPENDS +=	x11/gnome/yelp
.       endif
.   endif
.endif

# ld.bfd needs to be pointed at the X11 libs
.if !${PROPERTIES:Mlld}
MODGNOME_LDFLAGS += -L${X11BASE}/lib
.endif

# If a port needs extra CPPFLAGS, they can just set MODGNOME_CPPFLAGS
# to the desired value, like -I${X11BASE}/include
_MODGNOME_cppflags ?= CPPFLAGS="${MODGNOME_CPPFLAGS} -I${LOCALBASE}/include"
_MODGNOME_ldflags ?= LDFLAGS="${MODGNOME_LDFLAGS} -L${LOCALBASE}/lib"

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple} || \
    ${CONFIGURE_STYLE:Mcmake} || ${CONFIGURE_STYLE:Mmeson}
CONFIGURE_ARGS +=	${MODGNOME_CONFIGURE_ARGS_gi} \
			${MODGNOME_CONFIGURE_ARGS_vala}
CONFIGURE_ENV +=	${_MODGNOME_cppflags} ${_MODGNOME_ldflags}
.endif

.if defined(MODGNOME_BUILD_DEPENDS)
BUILD_DEPENDS +=	${MODGNOME_BUILD_DEPENDS}
.endif

.if defined(MODGNOME_RUN_DEPENDS)
RUN_DEPENDS +=		${MODGNOME_RUN_DEPENDS}
.endif
