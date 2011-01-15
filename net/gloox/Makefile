# $OpenBSD: Makefile,v 1.4 2011/01/15 01:07:45 naddy Exp $

COMMENT =	extensible C++ library for XMPP clients and components

REVISION =	1
DISTNAME =	gloox-1.0
SHARED_LIBS =	gloox 0.0
CATEGORIES =	net devel

HOMEPAGE =	http://camaya.net/gloox/
MASTER_SITES =	http://camaya.net/download/
EXTRACT_SUFX =	.tar.bz2
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Boost license
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =			devel/gettext gcc3
MODGCC3_ARCHES =		sparc
MODGCC3_LANGS =			c++
WANTLIB =			idn m stdc++ ssl crypto z
LIB_DEPENDS =			devel/libidn

USE_GMAKE =			Yes
USE_LIBTOOL =			Yes
SEPARATE_BUILD =		simple
CONFIGURE_STYLE	=		gnu
CONFIGURE_ARGS =	--with-openssl --with-zlib --with-libidn=${LOCALBASE} \
			--without-gnutls
MAKE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}

.include <bsd.port.mk>
