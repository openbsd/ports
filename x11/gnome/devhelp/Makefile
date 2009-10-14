# $OpenBSD: Makefile,v 1.29 2009/10/14 12:24:06 ajacoutot Exp $

COMMENT=	API documentation browser for GNOME

GNOME_PROJECT=	devhelp
GNOME_VERSION=	2.28.0

SHARED_LIBS +=	devhelp-1             1.0        # .0.0

CATEGORIES=	textproc

HOMEPAGE=	http://live.gnome.org/devhelp

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c
WANTLIB += cairo dbus-1 dbus-glib-1 enchant execinfo expat fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 icudata icui18n icuuc
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3 stdc++ tasn1
WANTLIB += xcb xcb-atom xcb-aux xcb-event xml2 xslt z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	:gnome-doc-utils-*:x11/gnome/doc-utils
LIB_DEPENDS=	wnck-1::devel/libwnck \
		startup-notification-1::devel/startup-notification \
		ORBit-2.>=3::devel/ORBit2 \
		gconf-2.>=6::devel/gconf2 \
		unique-1.0.>=1::devel/libunique \
		webkit-1.0::www/webkit

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	devhelp

CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

CONFIGURE_ARGS+= --sysconfdir="${SYSCONFDIR}/gnome"
