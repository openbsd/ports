# $OpenBSD: Makefile,v 1.35 2016/08/27 14:55:27 jca Exp $

COMMENT=	virtual sticky pad system

DISTNAME=	xpad-4.0
REVISION=	8
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpad/}
MASTER_SITES=	http://launchpad.net/xpad/trunk/4.0/+download/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://xpad.sourceforge.net/

MODULES=	textproc/intltool

LIB_DEPENDS=	devel/gettext \
		x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 intl pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
