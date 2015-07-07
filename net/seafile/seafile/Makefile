# $OpenBSD: Makefile,v 1.7 2015/07/07 08:44:42 kirby Exp $

COMMENT =		seafile daemon

GH_PROJECT =		seafile
PKGNAME = 		${GH_PROJECT}-daemon-${V}

SHARED_LIBS =		seafile 2.0

cWANTLIB += c ccnet curl event_core event_extra crypto ffi gio-2.0 glib-2.0
cWANTLIB += gmodule-2.0 gobject-2.0 idn jansson pcre pthread searpc sqlite3
cWANTLIB += ssl uuid z ${MODGETTEXT_WANTLIB}

WANTLIB += lib/inotify/inotify ${cWANTLIB}

MODULES =		devel/gettext lang/python
BUILD_DEPENDS =		devel/libtool \
			lang/vala \
			${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

RUN_DEPENDS = 		devel/py-simplejson
LIB_DEPENDS = 		devel/libinotify \
			net/curl \
			net/seafile/ccnet

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-fuse \
			--disable-server
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/inotify"

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

MODPY_ADJ_FILES = 	scripts/*.py scripts/build/*.py scripts/upgrade/*.py \
			tests/test-share.py tests/test-transfer.py \
			tools/seafile-admin app/seaf-cli

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -fi

.include <bsd.port.mk>
