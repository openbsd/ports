# $OpenBSD: Makefile,v 1.22 2019/08/02 16:44:41 sthen Exp $

COMMENT =		seafile daemon

GH_ACCOUNT =		haiwen
GH_PROJECT =		seafile
GH_COMMIT =		099302d77a6aae8d15951621713d0d4d48b7c142
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v7.0.1" tag
DISTNAME =		seafile-daemon-7.0.1pl20190709

SHARED_LIBS =		seafile 3.0

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
