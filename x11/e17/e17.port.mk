# $OpenBSD: e17.port.mk,v 1.2 2015/03/27 08:16:16 ajacoutot Exp $

# Module for e17 related ports

# Set to 'yes' if there are .desktop files under share/applications/.
.if defined(MODE17_DESKTOP_FILE) && ${MODE17_DESKTOP_FILE:L} == "yes"
MODE17_RUN_DEPENDS+=	devel/desktop-file-utils
.endif

# Set to 'yes' if there are icon files under share/icons/.
.if defined(MODE17_ICON_CACHE) && ${MODE17_ICON_CACHE:L} == "yes"
MODE17_RUN_DEPENDS+= x11/gtk+3,-guic
.endif

# Set to 'yes' if there are mime xml files under share/mime/.
.if defined(MODE17_MIME_DB) && ${MODE17_MIME_DB:L} == "yes"
MODE17_RUN_DEPENDS+=	misc/shared-mime-info>=0.21
.endif

# remove useless .la file
MODE17_PURGE_LA ?=
.if !empty(MODE17_PURGE_LA)
MODE17_post-install = for f in ${MODE17_PURGE_LA} ; do \
		find ${PREFIX}/$${f} -name '*.la' -exec rm {} \; ; done
.endif

RUN_DEPENDS+=	${MODE17_RUN_DEPENDS}
