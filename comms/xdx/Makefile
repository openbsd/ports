# $OpenBSD: Makefile,v 1.1.1.1 2007/05/28 17:15:10 jason Exp $

COMMENT=	"X DX cluster watcher"

VERSION=	2.2
DISTNAME=	xdx-${VERSION}
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://www.qsl.net/pg4i/linux/xdx.html

MAINTAINER=	Jason Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.qsl.net/pg4i/download/

CONFIGURE_STYLE=	gnu

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr	\
		Xrender c expat fontconfig freetype atk-1.0 m z png	\
		gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz cairo		\
		iconv intl						\
		gmodule-2.0 gobject-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
LIB_DEPENDS=	gtk-x11-2.0.>=400.13,gdk-x11-2.0.>=400.13,gdk_pixbuf-2.0.>=400.13::x11/gtk+2

.include <bsd.port.mk>
