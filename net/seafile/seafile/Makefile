COMMENT =		seafile daemon

GH_PROJECT =		seafile
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v8.0.9" tag
GH_COMMIT =		f89bdb4b55b5c21c19709476085f18470668eb0f
DISTNAME =		seafile-daemon-8.0.9pl20221111

SHARED_LIBS =		seafile 4.0

WANTLIB += c crypto curl event_core event_extra event_pthreads
WANTLIB += execinfo ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl jansson m nghttp2 pcre2-8 pthread searpc sqlite3
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
