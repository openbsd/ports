# $OpenBSD: Makefile,v 1.13 2009/10/12 10:35:48 ajacoutot Exp $

COMMENT=	graphical bug reporting tool for GNOME

GNOME_PROJECT=	bug-buddy
GNOME_VERSION=	2.28.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += asn1 atk-1.0 bonobo-2 bonobo-activation c cairo com_err
WANTLIB += crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gssapi
WANTLIB += gthread-2.0 gtk-x11-2.0 krb5 kvm m nspr4 nss3 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3 ssl3 tasn1
WANTLIB += xcb xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian \
		::x11/gnome/doc-utils
LIB_DEPENDS=	camel-1.2,ebook-1.2,edataserver-1.2,smime3.>=22,softokn3::databases/evolution-data-server \
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
