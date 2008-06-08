# $OpenBSD: Makefile,v 1.3 2008/06/08 17:42:49 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS-reader plugin for GNOME

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.0.8
PKGNAME=		evolution-plugin-rss-${GNOME_VERSION}p1
CATEGORIES=    		mail
EVO_VERSION=		2.22

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c dbus-1 glib-2.0 gobject-2.0 pcre pthread

MASTER_SITES=		http://gnome.eu.org/
EXTRACT_SUFX=		.tar.gz

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:gconf2-*:devel/gconf2 \
			:evolution->=2.22.2:mail/evolution
LIB_DEPENDS=		dbus-glib-1::x11/dbus-glib

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution-rss \
			--disable-schemas-install \
			--disable-gecko \
			--disable-webkit \
			--with-primary-render=gtkhtml
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"


SUBST_VARS=		EVO_VERSION

.include <bsd.port.mk>
