# $OpenBSD: Makefile,v 1.66 2013/03/11 11:46:12 espie Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multi-platform graphical toolkit
COMMENT-cups=	gtk+3 CUPS print backend

V=		3.6.4
DISTNAME=	gtk+-${V}
EXTRACT_SUFX=	.tar.xz

PKGNAME-main=	gtk+3-${V}
PKGNAME-cups=	gtk+3-cups-${V}
REVISION-main=	4
REVISION-cups=	4

CATEGORIES=	x11 devel

SHARED_LIBS +=  gdk-3                600.0    # 600.0
SHARED_LIBS +=  gtk-3                600.0    # 600.0
SHARED_LIBS +=  gailutil-3           0.0      # 0.0

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += ICE SM dbus-1 harfbuzz icudata icule icuuc pthread
WANTLIB += xcb xcb-render xcb-shm z atk-bridge-2.0 atspi

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gtk+/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MULTI_PACKAGES=	-main -cups

MODULES=	devel/gettext \
		devel/dconf

BUILD_DEPENDS=	devel/gobject-introspection

# man pages
BUILD_DEPENDS +=textproc/docbook \
		textproc/libxslt

RUN_DEPENDS-main= ${RUN_DEPENDS} \
		x11/hicolor-icon-theme

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		devel/pango>=1.32.0 \
		graphics/gdk-pixbuf2 \
		x11/gnome/at-spi2-atk>=2.6.0

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c

RUN_DEPENDS-cups= # empty
LIB_DEPENDS-cups= ${LIB_DEPENDS} \
		print/cups,-libs \
		${BASE_PKGPATH},-main=${V}

WANTLIB-cups += ${WANTLIB}
WANTLIB-cups += asn1 crypto cups gdk-3 gssapi gtk-3 krb5 ssl
WANTLIB-cups += avahi-client avahi-common colordprivate

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
TEST_IS_INTERACTIVE= x11

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2/ \
			-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-papi \
		--disable-packagekit \
		--enable-introspection

# sync archs list with devel/spidermonkey
# colord depends on polkit which depends on spidermonkey
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "hppa" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc64" || \
    ${MACHINE_ARCH} == "mips64el" || ${MACHINE_ARCH} == "mips64"
LIB_DEPENDS-cups += graphics/colord
WANTLIB-cups +=	colord lcms2
.else
CONFIGURE_ARGS +=	--disable-colord
.endif

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

# Do not build gtk-update-icon-cache and other shared tools.
CONFIGURE_ARGS += --enable-gtk2-dependency
BUILD_DEPENDS += x11/gtk+2,-guic
RUN_DEPENDS +=	x11/gtk+2,-guic

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gtk+3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtk-3.0/modules
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/{printbackends,immodules}/*.{a,la}

.include <bsd.port.mk>
