# $OpenBSD: Makefile,v 1.39 2009/08/10 06:33:43 kili Exp $

COMMENT=	Matt's traceroute - network diagnostic tool

DISTNAME=	mtr-0.75
PKGNAME=	${DISTNAME}p0
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

FLAVORS=	no_x11

FLAVOR?=
.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=	--without-gtk
.else
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		gdk-x11-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2 \
			gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread-stubs xcb z
.endif

.include <bsd.port.mk>
