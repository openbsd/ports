# $OpenBSD: Makefile,v 1.16 2020/05/31 08:01:19 ajacoutot Exp $

COMMENT=		AFP file and print services for IP networks

V=			3.1.12
DISTNAME=		netatalk-${V}
EXTRACT_SUFX=		.tar.bz2
PKGSPEC=		netatalk->=3,<4
REVISION=		0

SHARED_LIBS +=  atalk                16.0     # 16.0

CATEGORIES=		net

HOMEPAGE=		http://netatalk.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += avahi-client avahi-common c crypto db dbus-1 dbus-glib-1
WANTLIB += event_core event_extra ffi gcrypt gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gpg-error gthread-2.0 iconv intl pcre pthread
WANTLIB += tdb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=netatalk/}

MODULES=		lang/python

MODPY_ADJ_FILES=	contrib/shell_utils/afpstats
MODPY_BUILDDEP=		No
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=		databases/db/v4 \
			databases/tdb \
			devel/libevent2 \
			net/avahi \
			security/libgcrypt \
			x11/dbus-glib

# afpstats(1)
RUN_DEPENDS +=		x11/dbus-python${MODPY_FLAVOR}

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_MYSQL_CONFIG=

CONFIGURE_ARGS=		--disable-cups \
			--with-pkgconfdir=${SYSCONFDIR}/netatalk \
			--with-ssl-dir=/usr \
			--with-tdb=${LOCALBASE} \
			--with-libevent-header=${LOCALBASE}/include \
			--with-libevent-lib=${LOCALBASE}/lib \
			--without-ldap \
			--without-pam

# XXX does not build
CONFIGURE_ARGS +=	--disable-quota

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/netatalk \
			pkgconfdir=${PREFIX}/share/examples/netatalk/netatalk \
			localstatedir=${PREFIX}/share/examples/netatalk/var

post-install:
	rm ${PREFIX}/lib/netatalk/*.la

.include <bsd.port.mk>
