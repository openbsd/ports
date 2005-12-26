# $OpenBSD: Makefile,v 1.5 2005/12/26 21:32:01 sturm Exp $

COMMENT=		"high performance embedded database library"

DISTNAME=		qdbm-1.8.36
CATEGORIES=		databases
SHARED_LIBS=		qdbm	11.8

HOMEPAGE=		http://qdbm.sourceforge.net/

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

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
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}

.include <bsd.port.mk>
