# See https://github.com/tdlib/td/issues/364
NOT_FOR_ARCHS =	${BE_ARCHS}

COMMENT =	cross-platform library for building Telegram clients

# upstream sometimes tags stable versions, but various clients track
# "unofficial minor versions" which are only present as commit hashes.
GH_ACCOUNT =	tdlib
GH_PROJECT =	td
GH_COMMIT =	dd1b761fda7e47f4e0275c4d319f80a04db1997f
DISTNAME =	tdlib-1.8.56

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
