# $OpenBSD: Makefile,v 1.3 2009/10/15 23:51:06 ajacoutot Exp $

BROKEN=		WIP does not work yet

COMMENT=	PolicyKit integration for GNOME

GNOME_PROJECT=	PolicyKit-gnome
GNOME_VERSION=	0.9.2

PKGNAME=	${DISTNAME:L}

CATEGORIES=	security sysutils

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS+=	polkit-gnome	0.0	# .0.0

HOMEPAGE=	http://hal.freedesktop.org/docs/PolicyKit-gnome/

# GPLv2+ - LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb z

MASTER_SITES=	http://hal.freedesktop.org/releases/

MODULES=	x11/gnome \
		devel/gettext \
		devel/gconf2

DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= policykit-gnome

LIB_DEPENDS=	polkit-dbus,polkit-grant,polkit::sysutils/policykit

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--disable-scrollkeeper \
		--enable-gtk-doc=no

.include <bsd.port.mk>
