# $OpenBSD: Makefile,v 1.3 2011/10/18 09:45:42 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	simple encrypted backup tool for GNOME

V=		20.1
DISTNAME=	deja-dup-${V}
EXTRACT_SUFX=	.tar.bz2

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
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	http://launchpad.net/deja-dup/20/${V}/+download/

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome \
		lang/python

MODGNOME_TOOLS=	yelp
MODGNOME_DESKTOP_FILE=	Yes

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
	${SUBST_CMD} ${WRKSRC}/common/PythonChecker.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnome/help
	mv ${PREFIX}/share/help ${PREFIX}/share/gnome/help/deja-dup

.include <bsd.port.mk>
