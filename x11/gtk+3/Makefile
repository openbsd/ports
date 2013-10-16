# $OpenBSD: Makefile,v 1.89 2013/10/16 08:19:02 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+3 CUPS print backend

GNOME_VERSION=		3.10.2
GNOME_PROJECT=		gtk+

PKGNAME-main=		gtk+3-${GNOME_VERSION}
PKGNAME-cups=		gtk+3-cups-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-3                1000.0   # 1000.2
SHARED_LIBS +=  gtk-3                1000.0   # 1000.2
SHARED_LIBS +=  gailutil-3           0.0      # 0.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes graphite2
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += ICE SM dbus-1 harfbuzz pthread
WANTLIB += xcb xcb-render xcb-shm z atk-bridge-2.0 atspi

MULTI_PACKAGES=		-main -cups

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

# man pages
BUILD_DEPENDS +=	textproc/docbook-xsl

RUN_DEPENDS=		x11/hicolor-icon-theme

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/pango>=1.36.0 \
			graphics/gdk-pixbuf2>=2.30.0 \
			x11/gnome/at-spi2-atk>=2.10.0

RUN_DEPENDS-main=	${RUN_DEPENDS}

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
WANTLIB-cups += asn1 crypto cups gdk-3 gssapi gtk-3 krb5 ssl
WANTLIB-cups += avahi-client avahi-common
WANTLIB-cups += com_err heimbase roken wind

MODGNOME_TOOLS=		gi
MODGNOME_CPPFLAGS=	-I${X11BASE}/include/freetype2
MODGNOME_ICON_CACHE=	Yes

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-x11-backend \
			--disable-wayland-backend

# sync archs list with devel/spidermonkey
# colord depends on polkit which depends on spidermonkey
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
