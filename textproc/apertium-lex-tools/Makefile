# $OpenBSD: Makefile,v 1.6 2017/08/08 02:55:35 bentley Exp $

COMMENT =		module for compiling and processing lexical rules

DISTNAME =		apertium-lex-tools-0.1.0
REVISION =		2

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Constraint-based_lexical_selection_module

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += apertium3 c lttoolbox3 m pcre pthread ${COMPILER_LIBCXX} xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apertium/}

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		devel/pcre \
			textproc/apertium \
			textproc/libxml \
			textproc/lttoolbox

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`" \
			APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.12

# XXX 0.1.0 distfile doesn't have install-sh and other generated files?
pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
