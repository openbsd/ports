# $OpenBSD: Makefile,v 1.3 2006/09/18 12:19:41 espie Exp $

COMMENT=	"configuration utility for openbox"

DISTNAME=	obconf-1.6
CATEGORIES=	x11
MASTER_SITES=	http://tr.openmonkey.com/files/obconf/

HOMEPAGE=	http://tr.openmonkey.com/pages/obconf/

WANTLIB=	glib-2.0 ICE SM X11 Xext Xft Xrender \
		atk-1.0 c fontconfig iconv intl xml2 \
		gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 freetype \
		cairo z

LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glade-2.0.>=0.1::devel/libglade2 \
		startup-notification-1::devel/startup-notification \
		obparser,obrender::x11/openbox
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

NO_REGRESS=	Yes

.include <bsd.port.mk>
