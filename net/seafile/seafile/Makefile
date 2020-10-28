# $OpenBSD: Makefile,v 1.34 2020/10/28 17:52:16 kirby Exp $

COMMENT =		seafile daemon

GH_ACCOUNT =		haiwen
GH_PROJECT =		seafile
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v7.0.10" tag
GH_COMMIT =		626f561b52a21dea80f02e7b061fe848e1596c81
DISTNAME =		seafile-daemon-7.0.10pl20201026

SHARED_LIBS =		seafile 4.0

WANTLIB += c crypto curl event_core event_extra event_pthreads
WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl jansson m nghttp2 pcre pthread searpc sqlite3
WANTLIB += ssl uuid z lib/inotify/inotify

MODULES =		lang/python
MODPY_VERSION = 	${MODPY_DEFAULT_VERSION_3}
BUILD_DEPENDS =		lang/vala

RUN_DEPENDS =		devel/py-simplejson${MODPY_FLAVOR}
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
CONFIGURE_ARGS += 	--with-python3

MODPY_ADJ_FILES =	scripts/*.py scripts/build/*.py integration-tests/*.py \
			app/seaf-cli

.include <bsd.port.mk>
