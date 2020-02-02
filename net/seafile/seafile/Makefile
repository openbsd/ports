# $OpenBSD: Makefile,v 1.28 2020/02/02 11:28:22 kirby Exp $

COMMENT =		seafile daemon

GH_ACCOUNT =		haiwen
GH_PROJECT =		seafile
GH_COMMIT =		ac14eda9c1d45b37087988e9a8e435f51aaaa73c
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v7.0.1" tag
DISTNAME =		seafile-daemon-7.0.5pl20200119

SHARED_LIBS =		seafile 4.0

WANTLIB += c crypto curl event_core event_extra event_pthreads
WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl jansson m nghttp2 pcre pthread searpc sqlite3
WANTLIB += ssl uuid z lib/inotify/inotify

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
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/inotify"

MODPY_ADJ_FILES =	scripts/*.py scripts/build/*.py integration-tests/*.py \
			app/seaf-cli

.include <bsd.port.mk>
