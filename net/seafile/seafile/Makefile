COMMENT =		seafile daemon

GH_PROJECT =		seafile
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v9.0.6" tag
GH_COMMIT =		5517d012bde196a7bab99a08db6580d52630862a
DISTNAME =		seafile-daemon-9.0.6pl20240525
EPOCH = 		0

SHARED_LIBS =		seafile 4.0

WANTLIB += c crypto curl event_core event_extra event_pthreads
WANTLIB += execinfo ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl jansson m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += pcre2-8 pthread searpc sqlite3 ssl uuid websockets z
WANTLIB += lib/inotify/inotify

MODULES =		lang/python
BUILD_DEPENDS =		lang/vala

LIB_DEPENDS =		devel/libinotify \
			databases/sqlite3 \
			devel/libevent2 \
			net/curl \
			net/seafile/libsearpc \
			sysutils/e2fsprogs \
			www/libwebsockets

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/inotify"
CONFIGURE_ARGS += 	--with-python3

MODPY_ADJ_FILES =	scripts/*.py scripts/build/*.py integration-tests/*.py \
			app/seaf-cli

.include <bsd.port.mk>
