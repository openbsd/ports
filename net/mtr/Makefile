# $OpenBSD: Makefile,v 1.51 2013/02/09 14:49:52 sthen Exp $

COMMENT=	Matt's traceroute - network diagnostic tool#'

DISTNAME=	mtr-0.82
CATEGORIES=	net

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.bitwizard.nl/mtr/

# GPLv2+
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

WANTLIB=		c m termcap

MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/

CONFIGURE_STYLE=gnu

FLAVORS=	gtk

FLAVOR?=
.if ${FLAVOR} == "gtk"
BROKEN= fails at runtime with "No nameservers defined"
MODULES+=		devel/gettext
CONFIGURE_ARGS+=	--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		x11/gtk+2
WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z
.else
CONFIGURE_ARGS+=	--without-gtk
.endif

.include <bsd.port.mk>
