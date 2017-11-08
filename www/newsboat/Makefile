# $OpenBSD: Makefile,v 1.1.1.1 2017/11/08 22:25:57 fcambus Exp $

COMMENT =	RSS/Atom feed reader for text terminals

GH_ACCOUNT =	newsboat
GH_PROJECT =	newsboat
GH_TAGNAME =	r2.10.1

PKGNAME =	${DISTNAME:S/-r/-/}

CATEGORIES =	www

HOMEPAGE =	https://www.newsboat.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c crypto curl iconv intl json-c
WANTLIB +=	m ncursesw sqlite3 stfl xml2

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
