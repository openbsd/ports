# $OpenBSD: gtk.port.mk,v 1.1 2001/10/28 21:41:47 brad Exp $

#NEED_VERSION+=	1.487

# Ensure all the necessary libraries are installed when using the
# gtk module.
#MODULES+=	gettext

LIB_DEPENDS+=	glib.1.2,gmodule.1.2,gthread.1.2::devel/glib
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+

.include "${PORTSDIR}/infrastructure/mk/gettext.port.mk"
