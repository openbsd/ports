# $OpenBSD: Makefile,v 1.17 2009/11/09 17:09:22 bernd Exp $

COMMENT=		high performance embedded database library

DISTNAME=		qdbm-1.8.77
PKGNAME=		${DISTNAME}p0
CATEGORIES=		databases
SHARED_LIBS=		qdbm	14.13

HOMEPAGE=		http://qdbm.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qdbm/}

WANTLIB=		c z
MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-zlib \
			--enable-iconv

MAKE_FLAGS=	LIBVER=${LIBqdbm_VERSION:R} LIBREV=${LIBqdbm_VERSION:E}

.include <bsd.port.mk>
