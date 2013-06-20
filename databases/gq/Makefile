# $OpenBSD: Makefile,v 1.48 2013/06/20 06:54:36 ajacoutot Exp $

COMMENT=	GTK-based LDAP client

DISTNAME=	gq-1.3.4
REVISION=	5

CATEGORIES=	databases sysutils

HOMEPAGE=	http://sourceforge.net/projects/gqclient/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender asn1 atk-1.0 c cairo com_err crypto
WANTLIB += fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gtk-x11-2.0 heimbase krb5 lber ldap
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread roken
WANTLIB += ssl wind xml2 z

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
