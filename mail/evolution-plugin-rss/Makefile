# $OpenBSD: Makefile,v 1.12 2009/06/08 17:20:13 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS-reader plugin for GNOME

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.1.2
PKGNAME=		evolution-plugin-rss-${GNOME_VERSION}p5

CATEGORIES=    		mail

EVO_VERSION=		2.24
SUBST_VARS=		EVO_VERSION

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c dbus-1 glib-2.0 gobject-2.0 pcre pthread

MASTER_SITES=		http://gnome.eu.org/
EXTRACT_SUFX=		.tar.gz

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:evolution->=2.24.1.1:mail/evolution
LIB_DEPENDS=		dbus-glib-1::x11/dbus-glib

USE_X11=		Yes

MODGCONF2_LIBDEP=	No
MODGCONF2_SCHEMAS_DIR=	evolution-rss

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gecko \
			--disable-webkit \
			--with-primary-render=gtkhtml
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
