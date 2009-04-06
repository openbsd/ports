# $OpenBSD: Makefile,v 1.18 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=		GTK2 desktop calculator

GNOME_PROJECT=		gcalctool
GNOME_VERSION=		5.24.3.1
PKGNAME=		${DISTNAME}p3

CATEGORIES=		math

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread z dbus-1 dbus-glib-1 gio-2.0 \
		glade-2.0 pcre xml2

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gconf-2.>=6::devel/gconf2 \
			glade-2.0.>=1::devel/libglade2
BUILD_DEPENDS=		::devel/bison \
			::devel/gconf2

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

USE_X11=		Yes

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gcalctool/ \
			--disable-schemas-install

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
