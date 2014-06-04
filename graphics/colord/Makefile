# $OpenBSD: Makefile,v 1.38 2014/06/04 13:37:20 ajacoutot Exp $

COMMENT=	device color profile management daemon
BROKEN-hppa= SIGBUS in cd-create-profile during build

V=		1.2.1
DISTNAME=	colord-${V}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=  colordprivate        1.0      # 2.1
SHARED_LIBS +=  colord               1.0      # 2.1

CATEGORIES=	graphics print

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += lcms2 m pcre polkit-gobject-1 pthread sqlite3 z

MASTER_SITES=	http://www.freedesktop.org/software/colord/releases/

MODULES=	devel/dconf \
		devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	devel/gobject-introspection \
		lang/vala \
		textproc/docbook2x \
		x11/dbus

LIB_DEPENDS=	graphics/lcms2 \
		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# cd-self-test.c:1528:colord_client_func: assertion failed (version == version_str)
TEST_DEPENDS=	STEM-=${V}:${BUILD_PKGPATH}

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--enable-vala \
		--disable-gtk-doc \
		--disable-systemd-login \
		--disable-udev \
		--disable-gusb \
		--with-daemon-user=_colord

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

# disable: takes a huge amount of time/RAM
CONFIGURE_ARGS += --disable-print-profiles
#BUILD_DEPENDS += graphics/argyll

# XXX configure: error: Package requirements (bash-completion >= 2.0) were not met
CONFIGURE_ARGS += --disable-bash-completion

FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/colord"

# our old gcc does not handle some of the warning flags
MAKE_FLAGS=	WARNINGFLAGS_C=

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/colord/cd-icc-store.c \
		${WRKSRC}/src/cd-main.c

post-install:
	rm -r ${WRKINST}/rules.d
	rm ${PREFIX}/lib/colord-sensors/*.{a,la}

.include <bsd.port.mk>
