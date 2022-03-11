# This module is used by ports installing gsettings schemas under
#     PREFIX/share/glib-2.0/schemas/

# It requires the following tag in PLIST:
# @tag glib-compile-schemas

MODDCONF_BUILD_DEPENDS=	devel/glib2
MODDCONF_RUN_DEPENDS=	devel/glib2 \
			devel/dconf

BUILD_DEPENDS +=	${MODDCONF_BUILD_DEPENDS}
RUN_DEPENDS +=		${MODDCONF_RUN_DEPENDS}

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
CONFIGURE_ARGS +=	--disable-schemas-compile
.endif
