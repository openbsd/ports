# $OpenBSD: Makefile,v 1.22 2000/03/30 21:15:01 espie Exp $

DISTNAME=	freeciv-1.10.0
CATEGORIES=	games
NEED_VERSION=	1.241
MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable_version/

MAINTAINER=	israfil@gmx.net

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.freeciv.org/

# If USE_GTK is defined, freeciv will be built with a prettier look and
# feel:
#USE_GTK=	Yes

FLAVORS=gtk

.if defined(USE_GTK)
FLAVOR=gtk
.endif

FLAVOR?=

.if ${FLAVOR:L} == "gtk"
LIB_DEPENDS=	intl::devel/gettext \
		glib.1.2::devel/glib \
		gtk.1.2::x11/gtk+ \
		Imlib.19::graphics/imlib
CONFIGURE_ENV=	GTK_CONFIG="${PREFIX}/bin/gtk-config"
.else
CONFIGURE_ARGS=	--disable-gtktest
.endif

GNU_CONFIGURE=	Yes
FAKE=		Yes

NO_INSTALL_MANPAGES= Yes

.include <bsd.port.mk>
