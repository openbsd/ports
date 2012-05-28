# $OpenBSD: Makefile,v 1.14 2012/05/28 16:38:35 ajacoutot Exp $

COMMENT-main=	device color profile management daemon
COMMENT-gtk=	GTK integration for libcolord

V=		0.1.21
DISTNAME=	colord-${V}
EXTRACT_SUFX=	.tar.xz
PKGNAME-main=	${DISTNAME}
PKGNAME-gtk=	colord-gtk-${V}

REVISION-main=	1

SHARED_LIBS +=  colord               0.1      # 1.11
SHARED_LIBS +=  colord-gtk           0.0      # 1.11

CATEGORIES=	graphics x11

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += lcms2 m pcre z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c polkit-gobject-1 pthread sqlite3

MASTER_SITES=	http://www.freedesktop.org/software/colord/releases/

PSEUDO_FLAVORS=	no_gtk bootstrap
FLAVOR?=

MULTI_PACKAGES=	-main -gtk

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	lang/vala \
		devel/gobject-introspection \
		textproc/docbook2x

LIB_DEPENDS-main=sysutils/polkit \
		graphics/lcms2

# technically not needed, however it is handy to have some profiles to
# start working with
RUN_DEPENDS-main=graphics/shared-color-profiles

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--disable-gtk-doc \
		--disable-reverse \
		--disable-gudev \
		--with-daemon-user=_colord \
		--disable-sane # needs gudev, libgusb

FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/colord"

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-gtk}
WANTLIB-gtk += ${WANTLIB}
WANTLIB-gtk += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-gtk += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB-gtk += colord drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB-gtk += gtk-3 pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB-gtk += png pthread-stubs stdc++ xcb xcb-render xcb-shm
LIB_DEPENDS-gtk=graphics/colord,-main \
		x11/gtk+3
CONFIGURE_ARGS += --enable-gtk
.else
CONFIGURE_ARGS += --disable-gtk
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/colord.conf.in \
		 ${WRKSRC}/src/{cd-profile-store.c,cd-profile.c}
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

post-install:
	rm -rf ${WRKINST}/lib

.include <bsd.port.mk>
