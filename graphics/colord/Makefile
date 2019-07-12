# $OpenBSD: Makefile,v 1.72 2019/07/12 20:46:57 sthen Exp $

# XXX newer versions hard depend on gusb and udev...
PORTROACH=	skipv:1.4.0,1.4.1,1.4.2,1.4.3,1.4.4

COMMENT=	device color profile management daemon

V=		1.3.5
DISTNAME=	colord-${V}
EXTRACT_SUFX=	.tar.xz
REVISION=	1

SHARED_LIBS +=  colordprivate        1.1      # 2.5
SHARED_LIBS +=  colord               1.5      # 2.5

CATEGORIES=	graphics print

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl lcms2 m pcre polkit-gobject-1 pthread sqlite3
WANTLIB += z

MASTER_SITES=	https://www.freedesktop.org/software/colord/releases/

MODULES=	devel/dconf \
		textproc/intltool

BUILD_DEPENDS=	devel/gobject-introspection \
		lang/vala \
		textproc/docbook2x \
		x11/dbus

LIB_DEPENDS=	graphics/lcms2 \
		databases/sqlite3 \
		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

# cd-self-test.c:1528:colord_client_func: assertion failed (version == version_str)
TEST_DEPENDS=	STEM-=${V}:${BUILD_PKGPATH}

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--enable-introspection \
		--enable-vala \
		--disable-systemd-login \
		--disable-udev \
		--disable-gusb \
		--with-daemon-user=_colord

# disable: takes a huge amount of time/RAM
CONFIGURE_ARGS += --disable-print-profiles
# until proven useful
CONFIGURE_ARGS += --disable-argyllcms-sensor
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
