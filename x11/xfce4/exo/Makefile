# $OpenBSD: Makefile,v 1.36 2011/10/14 11:37:24 jasper Exp $

COMMENT=	Xfce4 extension library

XFCE_VERSION=	0.6.2
XFCE_PROJECT=	exo

REVISION=	3

SHARED_LIBS=	exo-1		0.0

HOMEPAGE=	http://www.xfce.org/projects

# GPLv2/LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

CONFIGURE_ARGS=	--disable-python --disable-linker-opts
CONFIGURE_ENV=	ac_cv_header_sys_ucred_h=yes \
		ac_cv_header_sys_mount_h=yes

BUILD_DEPENDS=	www/p5-URI
LIB_DEPENDS=	x11/gtk+2 \
		x11/xfce4/libxfce4util>=4.8.0

FAKE_FLAGS=	defaultsdir=${PREFIX}/share/examples/exo

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread z pthread-stubs xcb \
		xcb-render xfce4util GL Xxf86vm drm xcb-shm ffi

# XXX workaround for pkg_add bug when a symlink to a dir becomes a real dir
post-install:
	rm -Rf ${PREFIX}/share/doc/exo/html/{el,sv}/images/
	ln -s ${TRUEPREFIX}/share/doc/exo/html/C/images ${PREFIX}/share/doc/exo/html/el/images
	ln -s ${TRUEPREFIX}/share/doc/exo/html/C/images ${PREFIX}/share/doc/exo/html/sv/images

.include <bsd.port.mk>
