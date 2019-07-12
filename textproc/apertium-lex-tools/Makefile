# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:56 sthen Exp $

COMMENT =		module for compiling and processing lexical rules

V =			0.2.1
DISTNAME =		apertium-lex-tools-$V
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Constraint-based_lexical_selection_module

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

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
