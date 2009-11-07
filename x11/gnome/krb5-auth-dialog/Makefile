# $OpenBSD: Makefile,v 1.4 2009/11/07 09:01:43 ajacoutot Exp $

COMMENT=	monitor kerberos tickets

GNOME_PROJECT=	krb5-auth-dialog
GNOME_VERSION=	0.14

CATEGORIES=	security

HOMEPAGE=	https://honk.sigxcpu.org/piki/projects/krb5-auth-dialog/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo
WANTLIB += crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gssapi gthread-2.0 gtk-x11-2.0 krb5 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += z pthread-stubs xcb

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	notify.>=2::devel/libnotify

USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= krb5-auth-dialog
MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/krb5-auth-dialog/xdg/autostart \
		smallicondir=${PREFIX}/share/icons/hicolor/22x22/apps

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		KRB5_CFLAGS="-I/usr/include/kerberosV" \
		KRB5_LIBS="-lgssapi -lkrb5 -lasn1 -lcrypto"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-libnotify \
		--enable-pkinit \
		--disable-network-manager

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/krb5-auth-dialog
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/krb5-auth-dialog

.include <bsd.port.mk>
