# $OpenBSD: Makefile,v 1.1.1.1 2007/05/30 05:27:44 jason Exp $

COMMENT=	"gtk PSK31 send and receive"

DISTNAME=	gpsk31-0.3
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://www.qsl.net/pg4i/linux/gpsk31.html

MAINTAINER=	Jason Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2

WANTLIB=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xrender atk-1.0 c cairo expat fontconfig \
			freetype glib-2.0 glitz gmodule-2.0 \
			gobject-2.0 iconv intl m pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 png z ossaudio pthread stdc++

MASTER_SITES=		http://www.qsl.net/pg4i/download/

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--enable-hamlib

.include <bsd.port.mk>
