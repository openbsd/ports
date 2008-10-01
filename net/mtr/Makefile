# $OpenBSD: Makefile,v 1.36 2008/10/01 20:52:56 sthen Exp $

COMMENT=	Matt's traceroute - network diagnostic tool

DISTNAME=	mtr-0.74
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.bitwizard.nl/mtr/

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
WANTLIB += X11 Xext Xi glib-2.0 gmodule-2.0 iconv intl
WANTLIB += Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += glitz gobject-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z
.endif

.include <bsd.port.mk>
