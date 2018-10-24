# $OpenBSD: Makefile,v 1.18 2018/10/24 14:28:08 sthen Exp $

COMMENT =	extensible C++ library for XMPP clients and components

DISTNAME =	gloox-1.0.20
SHARED_LIBS +=	gloox                2.0      # 8.0
CATEGORIES =	net devel
REVISION =	1

HOMEPAGE =	https://camaya.net/gloox/
MASTER_SITES =	https://camaya.net/download/
EXTRACT_SUFX =	.tar.bz2
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3 with OpenSSL exemption
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += crypto iconv idn intl m pthread ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =			devel/libidn

USE_GMAKE =			Yes
SEPARATE_BUILD =		Yes
CONFIGURE_STYLE	=		gnu
CONFIGURE_ARGS =	--with-openssl --with-zlib --with-libidn=${LOCALBASE} \
			--without-gnutls
MAKE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}

.include <bsd.port.mk>
