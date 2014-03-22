# $OpenBSD: Makefile,v 1.23 2014/03/22 01:05:45 sthen Exp $

COMMENT=	NEC2 antenna simulator visualizer

BROKEN-hppa=	makedepend infinite loop
BROKEN-arm=	makedepend infinite loop
BROKEN-sh=	makedepend infinite loop

VERSION=	1.36
DISTNAME=	xnecview-${VERSION}
EXTRACT_SUFX=	.tgz

MASTER_SITES=	http://wwwhome.cs.utwente.nl/~ptdeboer/ham/xnecview/

CATEGORIES=	cad hamradio

HOMEPAGE=	http://www.cs.utwente.nl/~ptdeboer/ham/xnecview/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += png pthread z

MODULES=		devel/gettext

LIB_DEPENDS =		x11/gtk+2

CONFIGURE_STYLE=	imake

.include <bsd.port.mk>
