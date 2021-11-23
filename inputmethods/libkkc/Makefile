# $OpenBSD: Makefile,v 1.1 2021/11/23 06:39:17 uaa Exp $

COMMENT =	Japanese Kana Kanji conversion library

VERSION =	20210214
DISTNAME =	libkkc
PKGNAME =	libkkc-${VERSION}

GH_ACCOUNT =	ueno
GH_PROJECT =	libkkc
GH_COMMIT =	4583ab1753594b72592df5857106aedad98e533d

SHARED_LIBS =	kkc	2.0 # 2.0

CATEGORIES =	inputmethods

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} c ffi gee-0.8 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 iconv intl json-glib-1.0 \
		marisa pcre z

# clang and libc++abi required
COMPILER =	base-clang

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool \
		devel/gettext,-tools \
		devel/gobject-introspection \
		lang/vala \
		textproc/libmarisa,-python

LIB_DEPENDS =	devel/libffi \
		devel/libgee \
		devel/glib2 \
		converters/libiconv \
		devel/json-glib \
		devel/pcre \
		textproc/libmarisa

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoreconf
AUTORECONF =		./autogen.sh
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_ENV +=	LIBS="-lc++ -lc++abi -lpthread"

# suppress warnings (for C codes generated from Vala)
CONFIGURE_ENV +=	CFLAGS="-Wno-deprecated-declarations -Wno-int-conversion -Wno-unused-value -Wno-tautological-pointer-compare -Wno-incompatible-function-pointer-types -Wno-incompatible-pointer-types -Wno-incompatible-pointer-types-discards-qualifiers"

# tests/encoding.vala and tests/system-dictionary.vala crashes with
# Abort trap, bogus pointer (double free?).
# Attempting invalid encoding to CharsetConverter() at init() in
# libkkc/encoding.vala makes this problem, maybe Gio issue.
# If gio has fixed in the future, please remove NO_TEST.
NO_TEST =	Yes

.include <bsd.port.mk>
