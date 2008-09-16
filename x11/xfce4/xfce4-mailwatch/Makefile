# $OpenBSD: Makefile,v 1.7 2008/09/16 09:43:15 landry Exp $

COMMENT=	monitor various types of mailboxes

XFCE_VERSION=	1.1.0
XFCE_PLUGIN=	mailwatch

HOMEPAGE=	http://spuriousinterrupt.org/projects/mailwatch

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MASTER_SITES=	http://spuriousinterrupt.org/files/mailwatch/

LIB_DEPENDS+=	gnutls::security/gnutls

WANTLIB=	ICE SM X11 Xdmcp Xrender Xau Xdamage fontconfig freetype \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 pcre m z c\
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pthread \
		pangoft2-1.0 pangocairo-1.0 pixman-1 cairo glitz png \
		gthread-2.0 startup-notification-1 xfce4util xfcegui4 \
		gcrypt gpg-error

.include <bsd.port.mk>
