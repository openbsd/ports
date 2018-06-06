# $OpenBSD: Makefile,v 1.9 2018/06/06 09:16:11 bentley Exp $

COMMENT =		finite-state lexical processing toolkit

V =			3.4
DISTNAME =		lttoolbox-3.4.0

SHARED_LIBS +=		lttoolbox3-$V             1.0 # 0.0
SHARED_LIBS +=		lttoolbox3                1.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Lttoolbox

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv lzma m pthread ${COMPILER_LIBCXX} xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apertium/}

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS}
LIB_DEPENDS =		converters/libiconv \
			textproc/libxml

CONFIGURE_STYLE =	gnu

SUBST_VARS =		V

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh

.include <bsd.port.mk>
