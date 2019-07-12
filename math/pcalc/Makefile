# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:45 sthen Exp $

# XXX: 32-bit issues?
# See: https://github.com/vapier/pcalc/issues/7
# Uncomment me if 32-bit platforms are not reliable
# ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =	command line util for doing hex/dec/oct/bin math quickly
CATEGORIES =	math sysutils

GH_ACCOUNT =	vapier
GH_PROJECT =	pcalc
GH_TAGNAME =	v4

MAINTAINER =	Charles Daniels <charles@cdaniels.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c m

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =	devel/bison

TEST_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS}

USE_GMAKE =	Yes
MAKE_FLAGS =	BINDIR="${TRUEPREFIX}/bin" CC="${CC}"

FAKE_FLAGS =	BINDIR="${TRUEPREFIX}/bin"

# Known failures:
# tests 001 and 002 fail depending on accuracy of host math lib
# test 006 fails on 32-bit platforms
# https://github.com/vapier/pcalc/issues/6 and .../issues/7
TEST_ENV =	AUTOCONF_VERSION=${AUTOCONF_VERSION}
TEST_FLAGS = 	BINDIR="${TRUEPREFIX}/bin" TESTSUITEFLAGS=

AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
