# $OpenBSD: Makefile,v 1.9 1999/09/28 18:10:23 brad Exp $

DISTNAME=	freeciv-1.8.1
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable_version/

MAINTAINER=	israfil@gmx.net

# If USE_GTK is defined, freeciv will be built with a prettier look and
# feel:
#USE_GTK=	yes

.if defined(USE_GTK)
LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		Imlib.1.9:${PORTSDIR}/graphics/imlib
.endif

GNU_CONFIGURE=	yes

.if defined(USE_GTK)
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"
.else
CONFIGURE_ARGS=	--disable-gtktest
.endif

NO_INSTALL_MANPAGES= yes

.include <bsd.port.mk>
