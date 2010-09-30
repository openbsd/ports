# $OpenBSD: Makefile,v 1.20 2010/09/30 16:13:32 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS-reader plugin for GNOME

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.2.0
PKGNAME=		evolution-plugin-rss-${GNOME_VERSION}

CATEGORIES=		mail

EVO_VERSION=		2.32
SUBST_VARS=		EVO_VERSION

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 c dbus-1 dbus-glib-1 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gnutls gobject-2.0 gpg-error
WANTLIB += gthread-2.0 m pcre proxy pthread soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 stdc++ tasn1 xml2 z

MASTER_SITES=		http://gnome.eu.org/
EXTRACT_SUFX=		.tar.gz

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:evolution->=2.32.0:mail/evolution
LIB_DEPENDS=		::devel/libsoup,-gnome

USE_X11=		Yes

MODGCONF2_LIBDEP=	Yes
MODGCONF2_SCHEMAS_DIR=	evolution-rss

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gecko \
			--disable-webkit \
			--with-primary-render=gtkhtml
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
