# $OpenBSD: Makefile,v 1.11 2010/04/24 17:00:35 ajacoutot Exp $

COMMENT=	nautilus Python bindings

GNOME_PROJECT=	nautilus-python
GNOME_VERSION=	0.6.1
PKGNAME=	py-nautilus-${GNOME_VERSION}p0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += gthread-2.0 xcb-render xcb-render-util
WANTLIB += png pthread-stubs util xcb z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		nautilus-extension.>=2::x11/gnome/nautilus
RUN_DEPENDS=	::x11/gnome/py-gnome

USE_X11=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include `pkg-config --cflags gnome-vfs-2.0`" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -pthread -lutil"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

FAKE_FLAGS=	examplesdir=${PREFIX}/share/examples/py-nautilus \
		docsdir=${PREFIX}/share/doc/py-nautilus

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

.include <bsd.port.mk>
