# $OpenBSD: Makefile,v 1.8 1999/09/14 13:43:12 brad Exp $

DISTNAME=	freeciv-1.8.1
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable_version/ \
		http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/

MAINTAINER=	israfil@gmx.net

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		Imlib.1.9:${PORTSDIR}/graphics/imlib

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"

NO_INSTALL_MANPAGES= yes

.include <bsd.port.mk>
