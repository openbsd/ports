BROKEN-sparc64 = localpointer.h:561:31: error: 'auto' parameter not permitted in this context

COMMENT =	applied math library and CLI calculator
CATEGORIES =	math devel

V =		5.8.0
DISTNAME =	libqalculate-$V

SHARED_LIBS +=  qalculate            10.0

SITES =		https://github.com/Qalculate/libqalculate/releases/download/v$V/
HOMEPAGE =	https://qalculate.github.io/

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto curl curses ehistory ereadline
WANTLIB += gmp iconv icudata icuuc intl lzma m mpfr nghttp2 nghttp3
WANTLIB += ngtcp2 ngtcp2_crypto_libressl ssl xml2 z

COMPILER =	base-clang ports-gcc

MODULES =	textproc/intltool

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/mpfr \
		devel/readline \
		net/curl \
		textproc/icu4c \
		textproc/libxml

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.72
USE_GMAKE =		Yes
PORTHOME =		${WRKDIR}

CONFIGURE_ARGS =	--with-readline=ereadline
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
