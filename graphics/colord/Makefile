# $OpenBSD: Makefile,v 1.22 2013/03/30 13:03:45 ajacoutot Exp $

COMMENT=	device color profile management daemon

V=		0.1.30
DISTNAME=	colord-${V}
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS +=  colordprivate        0.0      # 1.18
SHARED_LIBS +=  colord               0.2      # 1.18

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
		textproc/docbook2x

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
		--disable-gudev \
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

FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/colord"

### XXX RM FOR NEXT RELEASE
# rm the following patches
# patch-configure_ac
# patch-lib_Makefile_am
# patch-m4_intltool_m4
# patch-src_Makefile_am
# patch-src_cd-sensor_c
# patch-src_cd-sensor_h
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS} \
			devel/libtool

post-patch:
	cd ${WRKSRC} && env \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i --force && \
		intltoolize --force
### END XXX

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/{cd-profile-store.c,cd-profile.c}
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

post-install:
	rm -r ${WRKINST}/rules.d
	rm ${PREFIX}/lib/colord-sensors/*.{a,la}

.include <bsd.port.mk>
