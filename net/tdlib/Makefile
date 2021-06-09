# $OpenBSD: Makefile,v 1.1.1.1 2021/06/09 10:42:16 landry Exp $

COMMENT =	cross-platform library for building Telegram clients

# upstream tags stable versions, but various clients using this library
# track "unofficial minor versions" which are only present as commit hashes.
GH_ACCOUNT =	tdlib
GH_PROJECT =	td
GH_COMMIT =	9964d24ec8e03bd0bc4d5fe33438f056d133fc1a
DISTNAME =	tdlib-1.7.3

SHARED_LIBS +=	tdjson	0.0	# 1.7.3
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
