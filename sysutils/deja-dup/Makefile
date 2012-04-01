# $OpenBSD: Makefile,v 1.8 2012/04/01 09:59:32 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	simple encrypted backup tool for GNOME

GNOME_VERSION=	22.0
GNOME_PROJECT=	deja-dup

CATEGORIES=	sysutils x11/gnome

HOMEPAGE=	https://launchpad.net/deja-dup

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0 gtk-3
WANTLIB += m nautilus-extension notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z stdc++

MASTER_SITES=	https://launchpad.net/deja-dup/${GNOME_VERSION:C/^([0-9]+).*/\1/}/${GNOME_VERSION}/+download/

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome \
		lang/python

MODGNOME_TOOLS=	vala yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

RUN_DEPENDS=	sysutils/duplicity>=0.6.15

LIB_DEPENDS=	x11/gnome/nautilus

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--with-nautilus \
		--without-unity

# XXX does not build with new gnome-control-center
CONFIGURE_ARGS += --without-ccpanel

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/deja-dup

pre-configure:
	${SUBST_CMD} ${WRKSRC}/common/PythonChecker.vala

.include <bsd.port.mk>
