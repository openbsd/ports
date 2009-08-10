# $OpenBSD: Makefile,v 1.2 2009/08/10 06:34:09 kili Exp $

COMMENT =	labels and businesss card designer

GNOME_PROJECT =	glabels
GNOME_VERSION =	2.2.5
PKGNAME=	${DISTNAME}p0
CATEGORIES =	productivity

SHARED_LIBS =	glabels 0.0 #.6.1
HOMEPAGE =	http://glabels.sourceforge.net
EXTRACT_SUFX =	.tar.gz

# GPLv2+/LGPLv2.1+/GFDLv1.1+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=glabels/}

MODULES =	devel/gettext \
		x11/gnome \
		devel/gconf2

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo com_err crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gnutls gobject-2.0
WANTLIB += gpg-error gssapi gthread-2.0 gtk-x11-2.0 krb5 m nspr4
WANTLIB += nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png popt pthread pthread-stubs smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 tasn1 util xcb xml2 z

LIB_DEPENDS =	gnomeui-2::x11/gnome/libgnomeui \
		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server

RUN_DEPENDS =	::misc/shared-mime-info

MODGNOME_HELP_FILES =	Yes
DESKTOP_FILES =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-update-desktopdb \
			--disable-update-mimedb

.include <bsd.port.mk>
