# $OpenBSD: Makefile,v 1.39 2019/07/12 20:51:19 sthen Exp $

COMMENT=		fast and lightweight file manager

DISTNAME=		pcmanfm-1.3.1
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		x11

HOMEPAGE=		http://pcmanfm.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fm fm-gtk fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

MODULES=		textproc/intltool

LIB_DEPENDS=		x11/libfm/core
RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/pcmanfm

.include <bsd.port.mk>
