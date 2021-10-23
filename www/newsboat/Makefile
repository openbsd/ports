# $OpenBSD: Makefile,v 1.28 2021/10/05 05:16:06 tb Exp $

COMMENT =	RSS/Atom feed reader for text terminals

V =		2.25
DISTNAME =	newsboat-$V

CATEGORIES =	www

HOMEPAGE =	https://www.newsboat.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c crypto curl curses iconv intl
WANTLIB +=	json-c m sqlite3 ssl stfl xml2

MASTER_SITES =	https://www.newsboat.org/releases/$V/

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}
MODULES =	devel/cargo

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_TEST =		No

BUILD_DEPENDS =	devel/gettext,-tools \
		textproc/asciidoctor

RUN_DEPENDS =	x11/gtk+3,-guic

LIB_DEPENDS =	databases/sqlite3 \
		devel/gettext,-runtime \
		devel/stfl \
		devel/json-c \
		textproc/libxml \
		net/curl

MAKE_ENV =	${MODCARGO_ENV} \
		CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS =	mandir="${PREFIX}/man"

USE_GMAKE =	Yes

ALL_TARGET =	all doc

CONFIGURE_STYLE = cargo simple
CONFIGURE_SCRIPT = config.sh

pre-configure:
	@sed -i 's,-Werror ,,g' ${WRKSRC}/Makefile

.include "crates.inc"

.include <bsd.port.mk>
