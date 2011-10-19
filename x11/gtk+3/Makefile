# $OpenBSD: Makefile,v 1.26 2011/10/19 17:41:40 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multi-platform graphical toolkit
COMMENT-docs=	gtk+3 documentation
COMMENT-cups=	gtk+3 CUPS print backend

V=		3.2.1
DISTNAME=	gtk+-${V}
EXTRACT_SUFX=	.tar.xz

PKGNAME-main=	gtk+3-${V}
PKGNAME-docs=	gtk+3-docs-${V}
PKGNAME-cups=	gtk+3-cups-${V}

REVISION-main=	0
REVISION-cups=	0

# grep ^GTK_BINARY_VERSION ${WRKSRC}/Makefile (after do-configure)
GTK_BINARY_VERSION=3.0.0
SUBST_VARS=	GTK_BINARY_VERSION
# XXX temporary, remove the following line from PLIST-main
# (immodules.cache file moved, so give a change for people to update)
# @unexec rm -f ${SYSCONFDIR}/gtk-3.0/gtk.immodules

CATEGORIES=	x11 devel

SHARED_LIBS +=  gdk-3                1.0      # 192.0
SHARED_LIBS +=  gtk-3                1.0      # 192.0
SHARED_LIBS +=  gailutil-3           0.0      # 0.0

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gtk+/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MULTI_PACKAGES=	-main -docs -cups

MODULES=	devel/gettext \
		devel/dconf

BUILD_DEPENDS=	devel/gobject-introspection

RUN_DEPENDS-main= ${RUN_DEPENDS} \
		x11/hicolor-icon-theme \
		misc/shared-mime-info

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		devel/glib2>=2.29.92 \
		devel/pango>=1.29.3 \
		devel/atk>=2.1.92 \
		graphics/gdk-pixbuf2

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c pthread

LIB_DEPENDS-docs= # empty
RUN_DEPENDS-docs= # empty
WANTLIB-docs +=	# empty
PKG_ARCH-docs=	*

RUN_DEPENDS-cups= # empty
LIB_DEPENDS-cups= ${LIB_DEPENDS} \
		print/cups \
		STEM->=${V}:${BASE_PKGPATH},-main

WANTLIB-cups += ${WANTLIB}
WANTLIB-cups += asn1 crypto cups gdk-3 gssapi gtk-3 krb5 ssl

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
REGRESS_IS_INTERACTIVE= x11

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2/ \
			-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-man \
		--disable-papi \
		--disable-colord \
		--disable-packagekit \
		--enable-introspection \
		--without-xml-catalog

# Do not build gtk-update-icon-cache and other shared tools.
CONFIGURE_ARGS += --enable-gtk2-dependency
BUILD_DEPENDS += ${RUN_DEPENDS}
RUN_DEPENDS +=	x11/gtk+2

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gtk+3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtk-3.0/modules

.include <bsd.port.mk>
