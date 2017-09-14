# $OpenBSD: Makefile,v 1.66 2017/09/14 16:21:15 dcoppa Exp $

BROKEN-alpha =		error: looser throw specifier for 'virtual OutOfBounds::~OutOfBounds()'
BROKEN-hppa =		bindings.h:85:4: error: type 'Binding' is not a direct base of 'Binding'

COMMENT =		ncurses mpd client inspired by ncmpc

DISTNAME =		ncmpcpp-0.8
REVISION =		5

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		audio

HOMEPAGE =		https://rybczak.net/ncmpcpp/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto curl ereadline iconv m mpdclient
WANTLIB += ncursesw nghttp2 pthread ssl ${LIBCXX} tag termcap z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		${HOMEPAGE}stable/

LIB_DEPENDS =		audio/libmpdclient>=2.4 \
			audio/taglib \
			converters/libiconv \
			devel/boost \
			devel/readline \
			net/curl

COMPILER =		gcc

FAKE_FLAGS =		docdir="${PREFIX}/share/examples/ncmpcpp/"

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--enable-clock \
			--enable-outputs \
			--with-taglib \
			--without-fftw

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
			ncursesw_LIBS="-lncursesw" \
			ax_cv_lib_readline="-L${LOCALBASE}/lib -lereadline -ltermcap"

NO_TEST =		Yes

.include <bsd.port.mk>
