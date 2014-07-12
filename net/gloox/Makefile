# $OpenBSD: Makefile,v 1.10 2014/07/12 17:51:25 pascal Exp $

COMMENT =	extensible C++ library for XMPP clients and components

DISTNAME =	gloox-1.0.3
REVISION =	0
SHARED_LIBS +=	gloox                1.0      # 8.0
CATEGORIES =	net devel

HOMEPAGE =	http://camaya.net/gloox/
MASTER_SITES =	http://camaya.net/download/
EXTRACT_SUFX =	.tar.bz2
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3 with OpenSSL exemption
PERMIT_PACKAGE_CDROM =		Yes

MODULES =			devel/gettext
WANTLIB =			idn m stdc++ ssl crypto z
LIB_DEPENDS =			devel/libidn

USE_GMAKE =			Yes
SEPARATE_BUILD =		Yes
CONFIGURE_STYLE	=		gnu
CONFIGURE_ARGS =	--with-openssl --with-zlib --with-libidn=${LOCALBASE} \
			--without-gnutls
MAKE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}

.include <bsd.port.mk>
