# $OpenBSD: Makefile,v 1.16 2019/11/11 08:49:10 bentley Exp $

COMMENT =		finite-state lexical processing toolkit

V =			3.5
VER =			3.5.0
DISTNAME =		lttoolbox-${VER}
REVISION =		1

SHARED_LIBS +=		lttoolbox3-$V             2.0 # 0.0
SHARED_LIBS +=		lttoolbox3                2.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Lttoolbox

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += c iconv lzma m pthread ${COMPILER_LIBCXX} xml2 z

MASTER_SITES =		https://github.com/apertium/lttoolbox/releases/download/v${VER}/

# C++2a
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		converters/libiconv \
			textproc/libxml

CONFIGURE_STYLE =	gnu

SUBST_VARS =		V

.include <bsd.port.mk>
