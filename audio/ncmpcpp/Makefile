BROKEN-alpha =		error: looser throw specifier for 'virtual OutOfBounds::~OutOfBounds()'
BROKEN-hppa =		bindings.h:85:4: error: type 'Binding' is not a direct base of 'Binding'

COMMENT =		ncurses mpd client inspired by ncmpc

GH_ACCOUNT =		ncmpcpp
GH_PROJECT =		ncmpcpp
GH_TAGNAME =		0.10.1

CATEGORIES =		audio

HOMEPAGE =		https://rybczak.net/ncmpcpp/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += curl curses ereadline icudata icui18n icuuc m mpdclient
WANTLIB += nghttp2 ssl tag z boost_atomic-mt
WANTLIB += iconv nghttp3 ngtcp2 ngtcp2_crypto_quictls

LIB_DEPENDS =		audio/libmpdclient>=2.4 \
			audio/taglib \
			devel/boost \
			devel/readline \
			net/curl

COMPILER =		base-clang ports-gcc

FAKE_FLAGS =		docdir="${PREFIX}/share/examples/ncmpcpp/"

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16


CONFIGURE_ARGS =	--enable-clock \
			--enable-outputs \
			--with-taglib \
			--without-fftw \
			--without-lto

CONFIGURE_ENV =		BOOST_LIB_SUFFIX="-mt" \
			CPPFLAGS="-DBOOST_RESULT_OF_USE_DECLTYPE \
				  -DBOOST_THREAD_USES_MOVE \
				  -isystem ${LOCALBASE}/include \
				  -isystem ${LOCALBASE}/include/ereadline \
				  -pthread" \
			LDFLAGS='-L${LOCALBASE}/lib' \
			ICU_CFLAGS="icu-is-not-really-needed" \
			ICU_LIBS="icu-is-not-really-needed" \
			ncursesw_CFLAGS="-D_GNU_SOURCE -D_DEFAULT_SOURCE" \
			ncursesw_LIBS="-lcurses" \
			ax_cv_lib_readline="-L${LOCALBASE}/lib -lereadline"

NO_TEST =		Yes

.include <bsd.port.mk>
