# $OpenBSD: Makefile,v 1.53 2016/11/04 11:35:18 sthen Exp $

BROKEN-alpha =		error: looser throw specifier for 'virtual OutOfBounds::~OutOfBounds()
BROKEN-hppa =		bindings.h:85:4: error: type 'Binding' is not a direct base of 'Binding'

COMMENT =		ncurses mpd client inspired by ncmpc

DISTNAME =		ncmpcpp-0.7.7
REVISION =		0

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		audio

HOMEPAGE =		http://ncmpcpp.rybczak.net/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_filesystem-mt boost_locale-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto curl
WANTLIB += ereadline m mpdclient ncursesw nghttp2 pthread ssl stdc++ tag
WANTLIB += termcap z

MASTER_SITES =		${HOMEPAGE}stable/

LIB_DEPENDS =		audio/libmpdclient>=2.4 \
			audio/taglib \
			devel/boost \
			devel/readline \
			net/curl

MODULES =		devel/gettext gcc4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

FAKE_FLAGS =		docdir="${PREFIX}/share/examples/ncmpcpp/"

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--enable-clock \
			--enable-outputs \
			--enable-unicode \
			--with-curl \
			--with-taglib \
			--without-fftw

CONFIGURE_ENV =		BOOST_LIB_SUFFIX="-mt" \
			CPPFLAGS="-DBOOST_RESULT_OF_USE_DECLTYPE \
				  -D_XOPEN_SOURCE_EXTENDED \
				  -isystem ${LOCALBASE}/include/ereadline \
				  -pthread" \
			ICU_CFLAGS="icu-is-not-really-needed" \
			ICU_LIBS="icu-is-not-really-needed" \
			ax_cv_lib_readline="-L${LOCALBASE}/lib -lereadline -ltermcap"

# filthy workaround for a mysterious "Abort trap" error :(
CXXFLAGS +=		-O1

NO_TEST =		Yes

.include <bsd.port.mk>
