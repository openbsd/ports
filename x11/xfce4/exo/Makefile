# $OpenBSD: Makefile,v 1.20 2009/10/10 07:56:18 landry Exp $

COMMENT=	Xfce4 extension library

XFCE_VERSION=	0.3.103
XFCE_PROJECT=	exo

SHARED_LIBS=	exo-0.3		5.0 \
		exo-hal-0.3	5.0

HOMEPAGE=	http://www.xfce.org/projects

# GPLv2/LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

CONFIGURE_ARGS=	--disable-python
CONFIGURE_ENV=	ac_cv_header_sys_ucred_h=yes \
		ac_cv_header_sys_mount_h=yes

BUILD_DEPENDS=	:p5-URI-*:www/p5-URI
LIB_DEPENDS=	notify.>=2::devel/libnotify \
		xfce4util::x11/xfce4/libxfce4util

FAKE_FLAGS=	defaultsdir=${PREFIX}/share/examples/xfce4

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread z pthread-stubs xcb

.include <bsd.port.mk>
