# $OpenBSD: Makefile,v 1.12 2019/11/11 08:49:10 bentley Exp $

COMMENT =		module for compiling and processing lexical rules

V =			0.2.1
DISTNAME =		apertium-lex-tools-$V
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Constraint-based_lexical_selection_module

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += apertium3 c lttoolbox3 m pcre pthread ${COMPILER_LIBCXX} xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/apertium/apertium-lex-tools/releases/download/v$V/ \
			${MASTER_SITE_SOURCEFORGE:=apertium/}

LIB_DEPENDS =		devel/pcre \
			textproc/apertium \
			textproc/libxml \
			textproc/lttoolbox

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
