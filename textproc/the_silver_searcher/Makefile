# $OpenBSD: Makefile,v 1.26 2017/05/28 18:56:30 espie Exp $

COMMENT =	code searching tool, with a focus on speed (ag)

DISTNAME =	the_silver_searcher-1.0.3
CATEGORIES =	textproc

HOMEPAGE =	https://github.com/ggreer/the_silver_searcher
MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c lzma pcre pthread z

# TLS
WANT_CXX =	base gcc
MODGCC4_LANGS =	c

MASTER_SITES =	http://geoff.greer.fm/ag/releases/

LIB_DEPENDS =	archivers/xz \
		devel/pcre

CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"
FAKE_FLAGS =		bashcompdir=${PREFIX}/share/bash-completion/completions

# not included in distfile, only in repository. requires cram.
NO_TEST =	YES

.include <bsd.port.mk>
