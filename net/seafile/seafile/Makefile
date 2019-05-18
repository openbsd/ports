# $OpenBSD: Makefile,v 1.21 2019/05/18 12:13:33 naddy Exp $

COMMENT =		seafile daemon

GH_PROJECT =		seafile
PKGNAME = 		${GH_PROJECT}-daemon-${V}

SHARED_LIBS =		seafile 3.0

cWANTLIB += c curl event_core event_extra crypto ffi gio-2.0 glib-2.0
cWANTLIB += gmodule-2.0 gobject-2.0 iconv intl jansson m nghttp2 pcre pthread
cWANTLIB += searpc sqlite3 ssl uuid z

WANTLIB += lib/inotify/inotify ${cWANTLIB}

MODULES =		lang/python
BUILD_DEPENDS =		lang/vala

RUN_DEPENDS = 		devel/py-simplejson
LIB_DEPENDS = 		devel/libinotify \
			databases/sqlite3 \
			devel/libevent2 \
			net/curl \
			net/seafile/libsearpc \
			sysutils/e2fsprogs

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--disable-fuse \
			--disable-server
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/inotify"

AUTOCONF_VERSION =	2.62
AUTOMAKE_VERSION =	1.11

MODPY_ADJ_FILES = 	scripts/*.py scripts/build/*.py integration-tests/*.py \
			app/seaf-cli

.include <bsd.port.mk>
