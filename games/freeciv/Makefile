# $OpenBSD: Makefile,v 1.18 2000/03/05 18:30:27 espie Exp $

BROKEN=		sources missing

DISTNAME=	freeciv-1.9.0
CATEGORIES=	games
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable_version/

MAINTAINER=	israfil@gmx.net

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# If USE_GTK is defined, freeciv will be built with a prettier look and
# feel:
#USE_GTK=	Yes

.if defined(USE_GTK)
LIB_DEPENDS=	intl:devel/gettext \
		glib.1.2:devel/glib \
		gtk.1.2:x11/gtk+ \
		Imlib.19:graphics/imlib
PKGNAME=	freeciv-1.9.0-gtk
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"
.else
CONFIGURE_ARGS=	--disable-gtktest
.endif

GNU_CONFIGURE=	Yes

NO_INSTALL_MANPAGES= Yes

.include <bsd.port.mk>
