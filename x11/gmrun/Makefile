# $OpenBSD: Makefile,v 1.5 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT=		X11 program launcher

DISTNAME=		gmrun-0.9
PKGNAME=		${DISTNAME}p3

CATEGORIES=		x11

HOMEPAGE=		http://www.bazon.net/mishoo/gmrun.epl

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += stdc++ z pthread-stubs xcb

MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gmrun/}

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
