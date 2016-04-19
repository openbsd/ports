# $OpenBSD: Makefile,v 1.48 2016/04/19 08:34:36 dcoppa Exp $

BROKEN-alpha =		error: looser throw specifier for 'virtual OutOfBounds::~OutOfBounds()
BROKEN-hppa =		bindings.h:85:4: error: type 'Binding' is not a direct base of 'Binding'

COMMENT =		ncurses mpd client inspired by ncmpc

DISTNAME =		ncmpcpp-0.7.4

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		audio

HOMEPAGE =		http://ncmpcpp.rybczak.net/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}stable/

WANTLIB =		boost_filesystem-mt boost_locale-mt \
			boost_program_options-mt boost_regex-mt \
			boost_system-mt boost_thread-mt c crypto \
			curl ereadline idn m mpdclient ncursesw \
			nghttp2 pthread ssl stdc++ tag termcap z

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
