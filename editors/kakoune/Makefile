# $OpenBSD: Makefile,v 1.5 2021/11/25 17:13:27 solene Exp $

COMMENT =		modal code editor with a focus on interactivity

V =			2021.11.08
DISTNAME =		kakoune-${V}

CATEGORIES =		editors

HOMEPAGE =		https://kakoune.org/

MAINTAINER =		Frederic Galusik <openbsd@galusik.fr>

WANTLIB =		${COMPILER_LIBCXX} c m

MASTER_SITES =		https://github.com/mawww/kakoune/releases/download/v${V}/

EXTRACT_SUFX =		.tar.bz2

# Public domain
PERMIT_PACKAGE =	Yes

# -std=c++17
COMPILER =		base-clang ports-gcc
MAKE_ENV =		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" gzip_man=no
FAKE_FLAGS =		PREFIX="${TRUEPREFIX}"

USE_GMAKE =		Yes

.include <bsd.port.mk>
