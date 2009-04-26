# $OpenBSD: Makefile,v 1.21 2009/04/26 11:01:05 ajacoutot Exp $

COMMENT=		API documentation browser for GNOME

GNOME_PROJECT=		devhelp
GNOME_VERSION=		0.22
PKGNAME=		${DISTNAME}p5
SHARED_LIBS +=	devhelp-1             1.0        # .0.0
CATEGORIES=		textproc

HOMEPAGE=		http://live.gnome.org/devhelp

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 icudata icui18n icuuc jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += soup-2.4 sqlite3 tasn1 xml2 xslt z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		:gnome-doc-utils-*:x11/gnome/doc-utils
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			wnck-1::devel/libwnck \
			startup-notification-1::devel/startup-notification \
			webkit-1.0::www/webkit

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+= 	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/devhelp/ \
			--disable-schemas-install
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
