# $OpenBSD: Makefile,v 1.105 2014/04/25 15:15:11 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+3 CUPS print backend
COMMENT-cloudprint=	gtk+3 Google Cloud Print backend

GNOME_VERSION=		3.12.1
GNOME_PROJECT=		gtk+

PKGNAME-main=		gtk+3-${GNOME_VERSION}
PKGNAME-cups=		gtk+3-cups-${GNOME_VERSION}
PKGNAME-cloudprint=	gtk+3-cloudprint-${GNOME_VERSION}

REVISION-main=		1
REVISION-cups=		0

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-3                1200.0   # 1200.0
SHARED_LIBS +=  gtk-3                1200.0   # 1200.0
SHARED_LIBS +=  gailutil-3           0.0      # 0.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MULTI_PACKAGES=		-main -cups -cloudprint

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/pango \
			graphics/gdk-pixbuf2 \
			x11/gnome/at-spi2-atk>=2.12.0

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			x11/hicolor-icon-theme

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps require symbolic icons with no fallback
# some apps needs the svg version of the icon
# (+see settings.ini in post-install)
RUN_DEPENDS-main +=	x11/gnome/icon-theme-symbolic #pulls in gnome-icon-theme+librsvg

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c

RUN_DEPENDS-cups=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-cups=	${LIB_DEPENDS} \
			print/cups,-libs \
			${BASE_PKGPATH},-main=${GNOME_VERSION}

WANTLIB-cups += ${WANTLIB}
WANTLIB-cups += avahi-client avahi-common crypto cups gdk-3 gtk-3 ssl

RUN_DEPENDS-cloudprint=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-cloudprint=	${LIB_DEPENDS} \
			devel/json-glib \
			net/librest \
			${BASE_PKGPATH},-main=${GNOME_VERSION}

WANTLIB-cloudprint += ${WANTLIB}
WANTLIB-cloudprint += gdk-3 gtk-3 json-glib-1.0 rest-0.7 soup-2.4 soup-gnome-2.4
WANTLIB-cloudprint += sqlite3 xml2

MODGNOME_TOOLS += docbook gobject-introspection gtk-update-icon-cache

MODGNOME_CPPFLAGS=	-I${X11BASE}/include/freetype2

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu

# sync with devel/mozjs17: colord -> polkit -> mozjs17
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "hppa" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc64" || \
    ${MACHINE_ARCH} == "mips64el" || ${MACHINE_ARCH} == "mips64"
LIB_DEPENDS-cups +=	graphics/colord
WANTLIB-cups +=	colordprivate colord lcms2
.else
CONFIGURE_ARGS +=	--disable-colord
.endif

# do not build gtk-update-icon-cache and other shared tools
CONFIGURE_ARGS +=	--enable-gtk2-dependency
BUILD_DEPENDS +=	x11/gtk+2,-guic

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gtk+3

post-install:
	@printf "[Settings]\ngtk-icon-theme-name = gnome\n" > \
		${PREFIX}/share/gtk-3.0/settings.ini
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtk-3.0/modules
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/{printbackends,immodules}/*.{a,la}

.include <bsd.port.mk>
