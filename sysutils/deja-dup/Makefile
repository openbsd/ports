# $OpenBSD: Makefile,v 1.24 2014/04/01 18:06:30 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	simple encrypted backup tool for GNOME

GNOME_VERSION=	28.0
GNOME_PROJECT=	deja-dup
REVISION=	0

CATEGORIES=	sysutils x11/gnome

HOMEPAGE=	https://launchpad.net/deja-dup

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 secret-1 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m nautilus-extension notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	https://launchpad.net/deja-dup/${GNOME_VERSION:C/^([0-9]+).*/\1/}/${GNOME_VERSION}/+download/

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

MODGNOME_TOOLS += vala yelp  desktop-file-utils  gtk-update-icon-cache

RUN_DEPENDS=	sysutils/duplicity

LIB_DEPENDS=	devel/libpeas \
		x11/gnome/nautilus

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-nautilus \
		--without-unity

# XXX does not build with new gnome-control-center
CONFIGURE_ARGS += --without-ccpanel

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/deja-dup

# XXX push a proper fix upstream
BUILD_DEPENDS += textproc/gsed
pre-configure:
	perl -pi -e 's,sed -i,gsed -i,g' \
		${WRKSRC}/data/Makefile.in
	${SUBST_CMD} ${WRKSRC}/deja-dup/widgets/WidgetUtils.vala

post-install:
	rm ${PREFIX}/lib/deja-dup/*.{a,la}
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}
	rm ${PREFIX}/libexec/deja-dup/tools/*.{a,la}

.include <bsd.port.mk>
