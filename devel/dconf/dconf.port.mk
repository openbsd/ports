# $OpenBSD: dconf.port.mk,v 1.1 2011/03/25 08:59:48 ajacoutot Exp $

# This module is used by ports installing gsettings schemas under
#     PREFIX/share/glib-2.0/schemas/

# It requires the following goo in PLIST:
# @exec %D/bin/glib-compile-schemas %D/share/glib-2.0/schemas
# @unexec-delete %D/bin/glib-compile-schemas %D/share/glib-2.0/schemas

# use the "no_editor" FLAVOR to prevent a cyclic dependency with x11/gtk+3
MODDCONF_BUILD_DEPENDS=	devel/glib2
MODDCONF_RUN_DEPENDS=	devel/glib2 \
			devel/dconf,no_editor

BUILD_DEPENDS +=	${MODDCONF_BUILD_DEPENDS}
RUN_DEPENDS +=		${MODDCONF_RUN_DEPENDS}

CONFIGURE_ARGS +=	--disable-schemas-compile
