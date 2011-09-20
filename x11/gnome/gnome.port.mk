# $OpenBSD: gnome.port.mk,v 1.47 2011/09/20 20:59:25 ajacoutot Exp $
#
# Module for GNOME related ports
#

.if (defined(GNOME_PROJECT) && defined(GNOME_VERSION))
DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
VERSION=		${GNOME_VERSION}
MASTER_SITES?=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX?=		.tar.xz
CATEGORIES+=		x11/gnome
.endif

.if ${NO_BUILD:L} == "no"
USE_LIBTOOL?=		Yes
MODULES+=		textproc/intltool
.   if defined(CONFIGURE_STYLE) && ${CONFIGURE_STYLE:Mgnu}
        CONFIGURE_ARGS+=${CONFIGURE_SHARED}
.   endif
.endif

# Set to 'yes' if there are .desktop files in the package list.
.if defined(MODGNOME_DESKTOP_FILE) && ${MODGNOME_DESKTOP_FILE:L} == "yes"
MODGNOME_RUN_DEPENDS+=	devel/desktop-file-utils
.endif

USE_GMAKE?=		Yes

FAKE_FLAGS +=	itlocaledir="${PREFIX}/share/locale/"

# Use MODGNOME_TOOLS to indicate certain tools are needed for building bindings
# or for ensuring documentation is available. If an option is not set, it's
# explicitly disabled.
# Currently supported tools are:
# * goi: Build and enable GObject Introspection data.
# * gtk-doc: Enable to build the included docs.
# * vala: Enable vala bindings.
# * yelp: Use this if there are any files under share/gnome/help/
#   in the pkg list and it calls gnome_help_display() -- gnome-doc-utils is
#   here to make sure we have a dependency on rarian (scrollkeeper-*) and
#   have access to the gnome-doc-* tools (not always needed but easier).
#
# Please note that if you're using multi-packages, you have to use the
# MODGNOME_RUN_DEPENDS_${tool} in your multi package RUN_DEPENDS.

MODGNOME_CONFIGURE_ARGS_gtkdoc=--disable-gtk-doc
MODGNOME_CONFIGURE_ARGS_goi=--disable-introspection
MODGNOME_CONFIGURE_ARGS_vala=--disable-vala

.if defined(MODGNOME_TOOLS)
.   if ${MODGNOME_TOOLS:Mgoi}
        MODGNOME_CONFIGURE_ARGS_goi=--enable-introspection
        MODGNOME_BUILD_DEPENDS+=devel/gobject-introspection
.   endif

.   if ${MODGNOME_TOOLS:Mgtk-doc}
        MODGNOME_CONFIGURE_ARGS_gtkdoc=--enable-gtk-doc
        MODGNOME_BUILD_DEPENDS+=textproc/gtk-doc
.   endif

.   if ${MODGNOME_TOOLS:Mvala}
        MODGNOME_CONFIGURE_ARGS_vala=--enable-vala
        MODGNOME_BUILD_DEPENDS+=lang/vala
.   endif

.   if ${MODGNOME_TOOLS:Myelp}
        MODGNOME_BUILD_DEPENDS+=x11/gnome/doc-utils
        _yelp_depend=x11/gnome/yelp
        MODGNOME_RUN_DEPENDS+=${_yelp_depend}
        MODGNOME_RUN_DEPENDS_yelp=${_yelp_depend}
.   endif
.endif

CONFIGURE_ARGS+=${MODGNOME_CONFIGURE_ARGS_goi} \
		${MODGNOME_CONFIGURE_ARGS_gtkdoc} \
		${MODGNOME_CONFIGURE_ARGS_vala}

.if defined(MODGNOME_BUILD_DEPENDS)
BUILD_DEPENDS+=		${MODGNOME_BUILD_DEPENDS}
.endif

.if defined(MODGNOME_RUN_DEPENDS)
RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}
.endif
