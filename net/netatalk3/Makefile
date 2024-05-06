COMMENT=		AFP file and print services for IP networks

V=			3.1.18
DISTNAME=		netatalk-${V}
EXTRACT_SUFX=		.tar.xz
PKGSPEC=		netatalk->=3,<4
EPOCH=			0
REVISION=		1

SHARED_LIBS +=  atalk                16.0     # unknown

CATEGORIES=		net

HOMEPAGE=		https://netatalk.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += avahi-client avahi-common c crypto db dbus-1 dbus-glib-1
WANTLIB += event_core event_extra ffi gcrypt gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gpg-error gthread-2.0 iconv intl pcre2-8 pthread
WANTLIB += tdb execinfo

SITES=			https://github.com/Netatalk/Netatalk/releases/download/netatalk-${V:S/./-/g}/

MODULES=		lang/python

MODPY_ADJ_FILES=	contrib/shell_utils/afpstats
MODPY_BUILDDEP=		No

LIB_DEPENDS=		databases/db/v4 \
			databases/tdb \
			devel/libevent2 \
			net/avahi,-libs \
			security/libgcrypt \
			x11/dbus-glib

RUN_DEPENDS=		net/avahi

# afpstats(1)
RUN_DEPENDS +=		x11/dbus-python${MODPY_FLAVOR}

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_MYSQL_CONFIG=

CONFIGURE_ARGS=		--with-pkgconfdir=${SYSCONFDIR}/netatalk \
			--with-ssl-dir=/usr \
			--with-tdb=${LOCALBASE} \
			--without-ldap \
			--without-pam

# XXX does not build
CONFIGURE_ARGS +=	--disable-quota

# don't pickup z11/gnome/tracker3
CONFIGURE_ARGS +=	--with-tracker-pkgconfig-version=0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		DBUS_SYS_DIR=${PREFIX}/share/examples/netatalk/dbus-1/system.d \
			pkgconfdir=${PREFIX}/share/examples/netatalk/netatalk \
			localstatedir=${PREFIX}/share/examples/netatalk/var

post-install:
	rm ${PREFIX}/lib/netatalk/*.la

.include <bsd.port.mk>
