# $OpenBSD: Makefile,v 1.15 2010/10/19 20:07:14 espie Exp $

COMMENT=	NEC2 antenna simulator visualizer

BROKEN-hppa=	makedepend infinite loop
BROKEN-arm=	makedepend infinite loop

VERSION=	1.35
DISTNAME=	xnecview-${VERSION}
REVISION=	7
EXTRACT_SUFX=	.tgz

MASTER_SITES=	http://wwwhome.cs.utwente.nl/~ptdeboer/ham/xnecview/

CATEGORIES=    	cad hamradio

HOMEPAGE=	http://www.cs.utwente.nl/~ptdeboer/ham/xnecview/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += gtk-x11-2.0.>=400.13 gdk-x11-2.0.>=400.13

MODULES=		devel/gettext

LIB_DEPENDS =		::x11/gtk+2

CONFIGURE_STYLE=	imake
USE_GROFF =	Yes

.include <bsd.port.mk>
