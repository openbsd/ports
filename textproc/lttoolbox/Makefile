# $OpenBSD: Makefile,v 1.4 2016/09/13 18:52:06 naddy Exp $

COMMENT =		finite-state lexical processing toolkit

V =			3.3
DISTNAME =		lttoolbox-3.3.2
REVISION =		0

SHARED_LIBS +=		lttoolbox3-$V             0.0 # 0.0
SHARED_LIBS +=		lttoolbox3                0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Lttoolbox

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv lzma m pthread stdc++ xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apertium/}

LIB_DEPENDS =		converters/libiconv \
			textproc/libxml

CONFIGURE_STYLE =	gnu

SUBST_VARS =		V

.include <bsd.port.mk>
