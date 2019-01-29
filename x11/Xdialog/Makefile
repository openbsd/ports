# $OpenBSD: Makefile,v 1.22 2019/01/29 20:58:31 naddy Exp $

COMMENT=	X11 counterpart of curses-based misc/dialog

DISTNAME=	Xdialog-2.3.1
REVISION=	8
CATEGORIES=	x11 misc

HOMEPAGE=	http://xdialog.free.fr/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

MASTER_SITES=	http://xdialog.free.fr/
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	devel/gettext-tools
LIB_DEPENDS=	x11/gtk+2
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	--with-gtk2
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# grab new macros that match *.so.n.m shared libraries
post-patch:
	cp ${LOCALBASE}/share/aclocal/lib-link.m4 \
	    ${LOCALBASE}/share/aclocal/lib-prefix.m4 ${WRKSRC}/m4

.include <bsd.port.mk>
