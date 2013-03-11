# $OpenBSD: Makefile,v 1.16 2013/03/11 11:41:29 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	simple encrypted backup tool for GNOME

GNOME_VERSION=	24.0
GNOME_PROJECT=	deja-dup
REVISION=	0

CATEGORIES=	sysutils x11/gnome

HOMEPAGE=	https://launchpad.net/deja-dup

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc m nautilus-extension
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=	https://launchpad.net/deja-dup/${GNOME_VERSION:C/^([0-9]+).*/\1/}/${GNOME_VERSION}/+download/

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

MODGNOME_TOOLS=	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

BUILD_DEPENDS=	lang/vala

RUN_DEPENDS=	sysutils/duplicity

LIB_DEPENDS=	devel/libpeas \
		x11/gnome/nautilus

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
