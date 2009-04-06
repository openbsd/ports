# $OpenBSD: Makefile,v 1.12 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=		VNC Client for the GNOME Desktop

GNOME_VERSION=		0.5.2
GNOME_PROJECT=		vinagre
PKGNAME=		${DISTNAME}p5

CATEGORIES=		net

HOMEPAGE=		http://www.gnome.org/projects/vinagre/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gconf-2 gcrypt \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread tasn1 xml2 z

RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info
LIB_DEPENDS=		gnome-keyring::x11/gnome/keyring \
			gtk-vnc-1.0.>=1::x11/gtk-vnc

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/vinagre \
			--disable-schemas-install \
			--enable-avahi=no
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
