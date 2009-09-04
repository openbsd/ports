# $OpenBSD: Makefile,v 1.4 2009/09/04 03:57:39 jolan Exp $

COMMENT=		Gtk-based GUI client for Twitter

GNOME_PROJECT=		twitux
GNOME_VERSION=		0.69
PKGNAME=		${DISTNAME}p1

CATEGORIES=     	net

HOMEPAGE=		http://live.gnome.org/DanielMorales/Twitux

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=twitux/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 ltdl
WANTLIB += m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ tasn1 vorbis vorbisfile xcb xml2 z

BUILD_DEPENDS=	:iso-codes-*:devel/iso-codes

LIB_DEPENDS=	soup-2.4::devel/libsoup \
		sexy::x11/libsexy \
		gnome-keyring::x11/gnome/keyring \
		notify::devel/libnotify \
		canberra,canberra-gtk::audio/libcanberra \
		enchant::textproc/enchant

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

MODGCONF2_SCHEMAS_DIR=	twitux

MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-dbus=yes \
		--enable-gnome-keyring=yes \
		--enable-spell=yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=	Yes
DESKTOP_FILES=	Yes

.include <bsd.port.mk>
