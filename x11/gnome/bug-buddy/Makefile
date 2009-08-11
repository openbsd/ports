# $OpenBSD: Makefile,v 1.12 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=	graphical bug reporting tool for GNOME

GNOME_PROJECT=	bug-buddy
GNOME_VERSION=	2.24.2
PKGNAME=	${DISTNAME}p9

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 asn1 atk-1.0 avahi-client \
		avahi-common avahi-glib bonobo-2 \
		bonobo-activation bonoboui-2 c cairo com_err crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype \
		gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi \
		gthread-2.0 gtk-x11-2.0 krb5 kvm m nspr4 nss3 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		plc4 plds4 png popt pthread soup-2.4 sqlite3 ssl ssl3 \
		tasn1 util xml2 z pthread-stubs xcb

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian \
		::x11/gnome/doc-utils
LIB_DEPENDS=	camel-1.2,ebook-1.2,edataserver-1.2,smime3.>=22,softokn3::databases/evolution-data-server \
		gnome-menu.>=4::x11/gnome/menus \
		gnomeui-2.>=2400::x11/gnome/libgnomeui \
		elf::devel/libelf \
		gtop-2.0.>=8::devel/libgtop2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-eds

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= bug-buddy

.include <bsd.port.mk>
