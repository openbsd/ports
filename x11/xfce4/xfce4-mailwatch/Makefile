# $OpenBSD: Makefile,v 1.13 2010/07/27 12:58:43 landry Exp $

COMMENT=	Xfce4 mailboxes monitor panel plugin

XFCE_VERSION=	1.1.0
XFCE_PLUGIN=	mailwatch
REVISION=	4

HOMEPAGE=	http://spuriousinterrupt.org/projects/mailwatch

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MASTER_SITES=	http://spuriousinterrupt.org/files/mailwatch/

LIB_DEPENDS+=	::security/gnutls

WANTLIB=	ICE SM X11 Xdmcp Xrender Xau Xdamage fontconfig freetype \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 pcre m z c\
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pthread \
		pangoft2-1.0 pangocairo-1.0 pixman-1 cairo glitz png \
		gthread-2.0 startup-notification-1 xfce4util xfcegui4 \
		gcrypt gpg-error gio-2.0 tasn1 pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event gnutls xcb-render \
		xcb-render-util

.include <bsd.port.mk>
