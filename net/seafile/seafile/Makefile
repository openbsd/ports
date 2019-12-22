# $OpenBSD: Makefile,v 1.24 2019/12/22 19:57:19 kirby Exp $

COMMENT =		seafile daemon

GH_ACCOUNT =		haiwen
GH_PROJECT =		seafile
GH_COMMIT =		a4e56b6588a432fe02c731e60124153ddc861bf7
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v7.0.1" tag
DISTNAME =		seafile-daemon-7.0.3pl20191221

SHARED_LIBS =		seafile 4.0

cWANTLIB += c curl event_core event_extra crypto ffi gio-2.0 glib-2.0
cWANTLIB += gmodule-2.0 gobject-2.0 iconv intl jansson m nghttp2 pcre pthread
cWANTLIB += searpc sqlite3 ssl uuid z

WANTLIB += lib/inotify/inotify ${cWANTLIB}

MODULES =		lang/python
BUILD_DEPENDS =		lang/vala

RUN_DEPENDS =		devel/py-simplejson
LIB_DEPENDS =		devel/libinotify \
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

MODPY_ADJ_FILES =	scripts/*.py scripts/build/*.py integration-tests/*.py \
			app/seaf-cli

.include <bsd.port.mk>
