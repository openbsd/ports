# $OpenBSD: Makefile,v 1.6 2018/09/27 09:15:27 fcambus Exp $

COMMENT =	RSS/Atom feed reader for text terminals

V =		2.13
DISTNAME =	newsboat-$V

CATEGORIES =	www

HOMEPAGE =	https://www.newsboat.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c crypto curl curses iconv intl
WANTLIB +=	json-c m sqlite3 stfl xml2

MASTER_SITES =	https://www.newsboat.org/releases/$V/

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/gettext-tools \
		textproc/asciidoc

LIB_DEPENDS =	databases/sqlite3 \
		devel/gettext \
		devel/stfl \
		devel/json-c \
		textproc/libxml \
		net/curl

MAKE_ENV =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS =	mandir="${PREFIX}/man"

USE_GMAKE =	Yes

ALL_TARGET =	all doc

CONFIGURE_STYLE = simple
CONFIGURE_SCRIPT = config.sh

pre-configure:
	@sed -i 's,-Werror ,,g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
