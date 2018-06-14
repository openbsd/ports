# $OpenBSD: Makefile,v 1.11 2018/06/14 07:02:26 bentley Exp $

COMMENT =		finite-state lexical processing toolkit

V =			3.4
VER =			3.4.2
DISTNAME =		lttoolbox-${VER}

SHARED_LIBS +=		lttoolbox3-$V             1.0 # 0.0
SHARED_LIBS +=		lttoolbox3                1.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Lttoolbox

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv lzma m pthread ${COMPILER_LIBCXX} xml2 z

MASTER_SITES =		https://github.com/apertium/lttoolbox/releases/download/v${VER}/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
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
