# $OpenBSD: Makefile,v 1.22 2021/05/28 10:04:30 sthen Exp $

COMMENT =	applied math library and CLI calculator
CATEGORIES =	math devel

V =		3.19.0
DISTNAME =	libqalculate-$V
HOMEPAGE =	https://qalculate.github.io/

SHARED_LIBS =	qalculate		1.1	# .34.0

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c crypto curl curses ehistory ereadline gmp iconv icudata
WANTLIB += icuuc intl lzma m mpfr nghttp2 ssl xml2 z

COMPILER =	base-clang ports-gcc

MASTER_SITES =	https://github.com/Qalculate/libqalculate/releases/download/v$V/

MODULES =	textproc/intltool

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/mpfr \
		devel/readline \
		net/curl \
		textproc/icu4c \
		textproc/libxml

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.71
USE_GMAKE =		Yes

CONFIGURE_ARGS =	--with-readline=ereadline
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
