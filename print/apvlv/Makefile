# $OpenBSD: Makefile,v 1.10 2013/03/11 11:37:53 espie Exp $

COMMENT=	lightweight PDF document viewer with vi bindings

DISTNAME=	apvlv-0.0.9.6
REVISION=	5
CATEGORIES=	print
HOMEPAGE=	http://code.google.com/p/apvlv/

MASTER_SITES=	http://apvlv.googlecode.com/files/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB +=	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB +=	Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat
WANTLIB +=	fontconfig freetype gdk-x11-2.0>=0.14 gdk_pixbuf-2.0>=0.14
WANTLIB +=	gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB +=	gtk-x11-2.0>=0.14 m pango-1.0 pangocairo-1.0
WANTLIB +=	pangoft2-1.0 pixman-1 png poppler-glib>=3 poppler>=3
WANTLIB +=	pthread pthread-stubs stdc++ xcb xcb-shm xcb-render z

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2 \
		print/poppler

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	--without-djvu
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/apvlv
USE_GROFF =		Yes

.include <bsd.port.mk>
