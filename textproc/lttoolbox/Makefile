# $OpenBSD: Makefile,v 1.1.1.1 2016/01/01 11:53:04 bentley Exp $

COMMENT =		finite-state lexical processing toolkit

V =			3.3
DISTNAME =		lttoolbox-3.3.1

SHARED_LIBS +=		lttoolbox3-$V             0.0 # 0.0
SHARED_LIBS +=		lttoolbox3                0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Lttoolbox

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++ xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apertium/}

MODULES =		converters/libiconv
LIB_DEPENDS =		textproc/libxml

CONFIGURE_STYLE =	gnu

SUBST_VARS =		V

.include <bsd.port.mk>
