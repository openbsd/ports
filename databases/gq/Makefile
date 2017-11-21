# $OpenBSD: Makefile,v 1.58 2017/11/21 00:12:59 naddy Exp $

COMMENT=	GTK-based LDAP client

DISTNAME=	gq-1.3.4
REVISION=	11

CATEGORIES=	databases sysutils

HOMEPAGE=	http://sourceforge.net/projects/gqclient/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo crypto fontconfig freetype gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gtk-x11-2.0 iconv intl
WANTLIB += lber ldap m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread ssl
WANTLIB += xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqclient/}

MODULES=	textproc/intltool \
		x11/gnome

LIB_DEPENDS=	databases/openldap \
		devel/libglade2 \
		x11/gnome/libgnome-keyring

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-browser-dnd

.include <bsd.port.mk>
