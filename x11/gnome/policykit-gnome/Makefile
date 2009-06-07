# $OpenBSD: Makefile,v 1.1.1.1 2009/06/07 08:18:43 ajacoutot Exp $

# XXX
BROKEN=		WIP: does not work yet

COMMENT=	PolicyKit integration for GNOME

GNOME_PROJECT=	PolicyKit-gnome
GNOME_VERSION=	0.9
PKGNAME=	${DISTNAME:L}

CATEGORIES=	security sysutils

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS+=	polkit-gnome	0.0	# .0.0

HOMEPAGE=	http://hal.freedesktop.org/docs/PolicyKit-gnome/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+ - LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://hal.freedesktop.org/releases/

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		crypto dbus-1 dbus-glib-1 expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread ssl util xml2 z

MODULES=	x11/gnome \
		devel/gettext

DESKTOP_FILES=	Yes

LIB_DEPENDS=	polkit-dbus,polkit-grant,polkit::sysutils/policykit \
		gnomevfs-2.>=2400::x11/gnome/vfs2 \
		sexy::x11/libsexy

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/policykit-gnome \
		--disable-scrollkeeper \
		--disable-schemas-install \
		--enable-gtk-doc=no

.include <bsd.port.mk>
