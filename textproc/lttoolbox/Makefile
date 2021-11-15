# $OpenBSD: Makefile,v 1.19 2021/11/15 04:23:37 bentley Exp $

COMMENT =		finite-state lexical processing toolkit

V =			3.5
VER =			3.5.4
DISTNAME =		lttoolbox-${VER}

SHARED_LIBS +=		lttoolbox3-$V             3.0 # 0.0
SHARED_LIBS +=		lttoolbox3                3.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		https://wiki.apertium.org/wiki/Lttoolbox

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += c iconv lzma m pthread ${COMPILER_LIBCXX} xml2 z

MASTER_SITES =		https://github.com/apertium/lttoolbox/releases/download/v${VER}/

EXTRACT_SUFX =		.tar.xz

# C++2a
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		converters/libiconv \
			textproc/libxml

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

SUBST_VARS =		V

.include <bsd.port.mk>
