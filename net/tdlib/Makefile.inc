# See https://github.com/tdlib/td/issues/364
NOT_FOR_ARCHS =	${BE_ARCHS}

COMMENT =	cross-platform library for building Telegram clients

# upstream sometimes tags stable versions, but various clients track
# "unofficial minor versions" which are only present as commit hashes.
GH_ACCOUNT =	tdlib
GH_PROJECT =	td
GH_COMMIT =	e597838871547131ef92332fca601f5effba4e8a
DISTNAME =	tdlib-1.8.62

CATEGORIES =	net

HOMEPAGE =	https://core.telegram.org/tdlib

MAINTAINER =	Omar Polo <op@omarpolo.com>, \
		Klemens Nanni <kn@openbsd.org>

# Boost SL 1.0
PERMIT_PACKAGE ?=	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gperf

# C++17
COMPILER =	base-clang ports-gcc

# if moving from GH_COMMIT to GH_TAGNAME, include the actual commit hash here
COMMIT =	${GH_COMMIT}
SUBST_VARS +=	COMMIT

CHECKSUM_FILE =	${.CURDIR}/../distinfo
PATCHDIR =	${.CURDIR}/../patches

post-patch:
	${SUBST_CMD} ${WRKSRC}/CMake/GetGitRevisionDescription.cmake
