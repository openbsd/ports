# $OpenBSD: Makefile,v 1.40 2021/10/04 14:35:40 kirby Exp $

COMMENT =		seafile daemon

GH_PROJECT =		seafile
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v8.0.4" tag
GH_COMMIT =		d01b8de6d378c69525e6ed57b84bd22579b96444
DISTNAME =		seafile-daemon-8.0.4pl20210923

SHARED_LIBS =		seafile 4.0

WANTLIB += c crypto curl event_core event_extra event_pthreads
WANTLIB += execinfo ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl jansson m nghttp2 pcre pthread searpc sqlite3
WANTLIB += ssl uuid z lib/inotify/inotify

MODULES =		lang/python
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
