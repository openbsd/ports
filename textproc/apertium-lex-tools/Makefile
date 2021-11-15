# $OpenBSD: Makefile,v 1.13 2021/11/15 04:23:36 bentley Exp $

COMMENT =		module for compiling and processing lexical rules

V =			0.2.7
DISTNAME =		apertium-lex-tools-$V

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Constraint-based_lexical_selection_module

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

#WANTLIB += apertium3-3.7 c lttoolbox3-3.5 m pthread ${COMPILER_LIBCXX} xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/apertium/apertium-lex-tools/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		textproc/apertium \
			textproc/libxml \
			textproc/lttoolbox

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
