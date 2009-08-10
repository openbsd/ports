# $OpenBSD: Makefile,v 1.9 2009/08/10 06:30:30 kili Exp $

COMMENT=	gtk PSK31 send and receive

DISTNAME=	gpsk31-0.3
PKGNAME=	$(DISTNAME)p5
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://www.qsl.net/pg4i/linux/gpsk31.html

MAINTAINER=	Jason Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m ossaudio pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb z

MASTER_SITES=		http://www.qsl.net/pg4i/download/

USE_X11=		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--enable-hamlib

.include <bsd.port.mk>
