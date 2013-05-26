# $OpenBSD: Makefile,v 1.46 2013/05/26 09:30:55 kirby Exp $

COMMENT=	GTK-based LDAP client

DISTNAME=	gq-1.3.4
REVISION=	3

CATEGORIES=	databases sysutils

HOMEPAGE=	http://sourceforge.net/projects/gqclient/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto expat fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gtk-x11-2.0 krb5 lber ldap m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs ssl
WANTLIB += xcb xcb-render xcb-shm xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqclient/}

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	databases/openldap \
		devel/libglade2 \
		x11/gnome/libgnome-keyring

RUN_DEPENDS=	misc/shared-mime-info

MODGNOME_TOOLS=	yelp
MODGNOME_DESKTOP_FILE=Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-kerberos-prefix=/usr \
		--disable-update-mimedb \
		--enable-browser-dnd

.include <bsd.port.mk>
