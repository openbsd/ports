# $OpenBSD: Makefile,v 1.24 2010/12/29 19:50:46 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS-reader plugin for GNOME

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.2.0
PKGNAME=		evolution-plugin-rss-0.2.2

# from upstream git
MASTER_SITES0=		http://www.bsdfrog.org/OpenBSD/distfiles/
PATCHFILES=		ep-rss-EVOLUTION_RSS_0_2_2_CORRECTED.diff:0
PATCH_DIST_STRIP=	-p1

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
WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += enchant expat fontconfig freetype gailutil gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0 gtkhtml-3.14 gtkhtml-editor-3.14
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb xcb-render xcb-shm

MASTER_SITES=		http://gnome.eu.org/
EXTRACT_SUFX=		.tar.gz

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		mail/evolution>=2.32.0
LIB_DEPENDS=		devel/libsoup,-gnome

MODGCONF2_LIBDEP=	Yes
MODGCONF2_SCHEMAS_DIR=	evolution-rss

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gecko \
			--disable-webkit \
			--with-primary-render=gtkhtml
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's,sed -i -e,perl -pi -e,g' ${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
