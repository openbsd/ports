# $OpenBSD: Makefile,v 1.8 2017/08/07 07:14:56 bentley Exp $

COMMENT =		finite-state lexical processing toolkit

V =			3.3
DISTNAME =		lttoolbox-3.3.3

SHARED_LIBS +=		lttoolbox3-$V             0.0 # 0.0
SHARED_LIBS +=		lttoolbox3                0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Lttoolbox

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv lzma m pthread ${COMPILER_LIBCXX} xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apertium/}

LIB_DEPENDS =		converters/libiconv \
			textproc/libxml

CONFIGURE_STYLE =	gnu

SUBST_VARS =		V

.include <bsd.port.mk>
