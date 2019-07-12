# $OpenBSD: Makefile,v 1.33 2019/07/12 20:50:16 sthen Exp $

COMMENT =	code searching tool, with a focus on speed (ag)

DISTNAME =	the_silver_searcher-2.2.0
CATEGORIES =	textproc
REVISION =	0

HOMEPAGE =	https://geoff.greer.fm/ag/
# Apache 2.0
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c lzma pcre pthread z

# TLS
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

MASTER_SITES =	https://geoff.greer.fm/ag/releases/

LIB_DEPENDS =	archivers/xz \
		devel/pcre

CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"
FAKE_FLAGS =		bashcompdir=${PREFIX}/share/bash-completion/completions

# not included in distfile, only in repository. requires cram.
NO_TEST =	Yes

.include <bsd.port.mk>
