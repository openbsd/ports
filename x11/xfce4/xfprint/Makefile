# $OpenBSD: Makefile,v 1.11 2009/05/22 13:08:22 ajacoutot Exp $

COMMENT=	Xfce4 printing helper

XFCE_PROJECT=	xfprint
PKGNAME=	${DISTNAME}p0

SHARED_LIBS=	xfprint	0.1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

CONFIGURE_ARGS=	--enable-cups \
		--enable-bsdlpr \
		--with-printcap=/etc/printcap

RUN_DEPENDS=	::print/a2ps

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfconf-0::x11/xfce4/xfconf \
		cups.>=3::print/cups

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		pthread startup-notification-1 xfce4util z gcrypt gnutls \
		gpg-error tasn1 asn1 crypto gssapi krb5

.include <bsd.port.mk>
