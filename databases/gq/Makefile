# $OpenBSD: Makefile,v 1.54 2014/04/21 16:13:53 sthen Exp $

COMMENT=	GTK-based LDAP client

DISTNAME=	gq-1.3.4
REVISION=	8

CATEGORIES=	databases sysutils

HOMEPAGE=	http://sourceforge.net/projects/gqclient/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gnome-keyring gobject-2.0 gpg-error gtk-x11-2.0
WANTLIB += lber ldap m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += ssl xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqclient/}

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	databases/openldap \
		devel/libglade2 \
		x11/gnome/libgnome-keyring

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-browser-dnd

.include <bsd.port.mk>
