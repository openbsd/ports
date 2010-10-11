# $OpenBSD: Makefile,v 1.19 2010/10/11 08:19:38 jasper Exp $

COMMENT=	Xfce4 printing helper

XFCE_PROJECT=	xfprint
XFCE_VERSION=	4.6.1
REVISION=	6

MASTER_SITES=	http://archive.xfce.org/src/archive/${XFCE_PROJECT}/${XFCE_BRANCH}/
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

LIB_DEPENDS=	::x11/xfce4/libxfcegui4 \
		::x11/xfce4/xfconf \
		::print/cups

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo
WANTLIB += crypto dbus-1 dbus-glib-1 execinfo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gssapi gtk-x11-2.0 krb5
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs ssl startup-notification-1
WANTLIB += xcb xcb-atom xcb-aux xcb-event xfce4util z gthread-2.0
WANTLIB += xcb-render xcb-render-util cups xfconf-0 xfcegui4

.include <bsd.port.mk>
