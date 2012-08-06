# $OpenBSD: Makefile,v 1.40 2012/08/06 12:21:05 naddy Exp $

COMMENT=	GTK2-based scientific calculator

DISTNAME=	galculator-1.3.4
REVISION=	4
CATEGORIES=	math
HOMEPAGE=	http://galculator.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender Xxf86vm \
		atk-1.0 c cairo drm expat ffi fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		pango-1.0 xml2 z pangocairo-1.0 pcre png \
		pangoft2-1.0 pixman-1 pthread pthread-stubs stdc++ xcb \
		xcb-render xcb-shm

MODULES=	devel/gettext \
		textproc/intltool

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galculator/}
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/libglade2
WANTLIB +=	glade-2.0

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
