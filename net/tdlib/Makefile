# See https://github.com/tdlib/td/issues/364
NOT_FOR_ARCHS =	${BE_ARCHS}

COMMENT =	cross-platform library for building Telegram clients

# upstream tags stable versions, but various clients using this library
# track "unofficial minor versions" which are only present as commit hashes.
GH_ACCOUNT =	tdlib
GH_PROJECT =	td
GH_COMMIT =	7eabd8ca60de025e45e99d4e5edd39f4ebd9467e
DISTNAME =	tdlib-1.8.4
REVISION =	0

SHARED_LIBS +=	tdjson	0.1
CATEGORIES =	net

HOMEPAGE =	https://core.telegram.org/tdlib

MAINTAINER =	Omar Polo <op@omarpolo.com>

# Boost SL 1.0
PERMIT_PACKAGE = Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gperf

# C++14
COMPILER =	base-clang ports-gcc

WANTLIB +=	${COMPILER_LIBCXX} crypto m ssl z

# if moving from GH_COMMIT to GH_TAGNAME, include the actual commit hash here
COMMIT =	${GH_COMMIT}
SUBST_VARS +=	COMMIT

post-patch:
	${SUBST_CMD} ${WRKSRC}/gen_git_commit_h.sh

.include <bsd.port.mk>
