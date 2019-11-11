# $OpenBSD: Makefile,v 1.24 2019/11/11 19:56:54 landry Exp $

COMMENT=	opensource implementation of the OFX specification

GH_ACCOUNT =	libofx
GH_PROJECT =	libofx
GH_TAGNAME =	0.9.15
CATEGORIES=	devel

HOMEPAGE=	http://libofx.sourceforge.net/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

SHARED_LIBS=	ofx 7.0	# .7.2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl m pthread ${COMPILER_LIBCXX} osp

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	textproc/opensp \
		net/curl \
		textproc/libxml++

WANTLIB += crypto curl ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += lzma nghttp2 pcre sigc-2.0 ssl xml++-2.6 xml2 z

BUILD_DEPENDS =	devel/help2man \
		devel/gengetopt

CONFIGURE_STYLE =	autoreconf
AUTORECONF =		./autogen.sh
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm" \
		CPPFLAGS="-I${LOCALBASE}/include"
USE_GMAKE =	Yes

CONFIGURE_ARGS=	--disable-doxygen \
		--disable-dot

.include <bsd.port.mk>
