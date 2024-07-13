COMMENT=		Apple Filing Protocol file server over TCP/IP

V=			3.2.3
DISTNAME=		netatalk-${V}
EXTRACT_SUFX=		.tar.xz
PKGSPEC=		netatalk->=3,<4
EPOCH=			0

SHARED_LIBS +=  atalk                17.0     # unknown

CATEGORIES=		net

HOMEPAGE=		https://netatalk.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += avahi-client avahi-common c crypto db dbus-1 dbus-glib-1
WANTLIB += event_core event_extra ffi gcrypt gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gpg-error gthread-2.0 iconv intl pcre2-8 pthread
WANTLIB += execinfo

SITES=			https://github.com/Netatalk/Netatalk/releases/download/netatalk-${V:S/./-/g}/

LIB_DEPENDS=		databases/db/v4 \
			devel/libevent2 \
			net/avahi,-libs \
			security/libgcrypt \
			x11/dbus-glib

RUN_DEPENDS=		net/avahi

# afpstats(1)
RUN_DEPENDS +=		net/p5-Net-DBus

### meson
# -> drop ac_cv_path_MYSQL_CONFIG= from CONFIGURE_ENV
# -> check all optional feature on configure output
#CONFIGURE_ARGS=		-Dwith-acls=false \
#			-Dwith-dtrace=false \
#			-Dwith-gssapi=false \
#			-Dwith-kerberos=false \
#			-Dwith-krbV-uam=false \
#			-Dwith-ldap=false \
#			-Dwith-pam=false \
#			-Dwith-shadow=false \
#			-Dwith-tcp-wrappers=false \
#			-Dwith-dbus-daemon-path=${LOCALBASE}/bin/dbus-daemon

# needs x11/gnome/tracker3
#CONFIGURE_ARGS +=	-Dwith-spotlight=false
### end meson

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.16
CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_MYSQL_CONFIG=

CONFIGURE_ARGS=		--with-pkgconfdir=${SYSCONFDIR}/netatalk \
			--with-ssl-dir=/usr \
			--without-ldap \
			--without-pam

# XXX does not build
CONFIGURE_ARGS +=	--disable-quota

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		DBUS_SYS_DIR=${PREFIX}/share/examples/netatalk/dbus-1/system.d \
			pkgconfdir=${PREFIX}/share/examples/netatalk/netatalk \
			localstatedir=${PREFIX}/share/examples/netatalk/var

post-install:
	rm ${PREFIX}/lib/netatalk/*.{a,la}

.include <bsd.port.mk>
