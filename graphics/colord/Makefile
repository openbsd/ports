# $OpenBSD: Makefile,v 1.11 2012/05/28 08:45:38 ajacoutot Exp $

COMMENT=	device color profile management daemon

DISTNAME=	colord-0.1.21
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=  colord               0.1      # 1.11
SHARED_LIBS +=  colord-gtk           0.0      # 1.11

CATEGORIES=	graphics devel

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png polkit-gobject-1 pthread
WANTLIB += pthread-stubs sqlite3 stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=	http://www.freedesktop.org/software/colord/releases/

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	lang/vala \
		devel/gobject-introspection \
		textproc/docbook2x

LIB_DEPENDS=	sysutils/polkit \
		graphics/lcms2 \
		x11/gtk+3

# technically not needed, however it is handy to have some profiles to
# start working with
RUN_DEPENDS=	graphics/shared-color-profiles

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
