# $OpenBSD: Makefile,v 1.3 2010/07/26 20:07:31 edd Exp $

COMMENT=	lightweight PDF document viewer with vi bindings

DISTNAME=	apvlv-0.0.9.6
REVISION=	1
CATEGORIES=	print
HOMEPAGE=	http://code.google.com/p/apvlv/

MASTER_SITES=	http://apvlv.googlecode.com/files/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB +=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB +=	Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB +=	freetype gdk-x11-2.0.>=0.14 gdk_pixbuf-2.0.>=0.14 gio-2.0
WANTLIB +=	glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB +=	gtk-x11-2.0.>=0.14 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB +=	pangoft2-1.0 pixman-1 png poppler-glib.>=3 poppler.>=3
WANTLIB +=	pthread pthread-stubs stdc++ xcb xcb-render xcb-render-util z

LIB_DEPENDS=	::x11/gtk+2 \
		::print/poppler

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	--without-djvu
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/apvlv

.include <bsd.port.mk>
