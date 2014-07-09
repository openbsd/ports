# $OpenBSD: dconf.port.mk,v 1.5 2014/07/09 16:49:41 ajacoutot Exp $

# This module is used by ports installing gsettings schemas under
#     PREFIX/share/glib-2.0/schemas/

# It requires the following goo in PLIST:
# @exec %D/bin/glib-compile-schemas %D/share/glib-2.0/schemas >/dev/null
# @unexec-delete %D/bin/glib-compile-schemas %D/share/glib-2.0/schemas >/dev/null

# use the "no_editor" FLAVOR to prevent a cyclic dependency
MODDCONF_BUILD_DEPENDS=	devel/glib2
MODDCONF_RUN_DEPENDS=	devel/glib2 \
			devel/dconf,no_editor,bootstrap

BUILD_DEPENDS +=	${MODDCONF_BUILD_DEPENDS}
RUN_DEPENDS +=		${MODDCONF_RUN_DEPENDS}

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
CONFIGURE_ARGS +=	--disable-schemas-compile
.endif
