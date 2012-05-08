# $OpenBSD: Makefile,v 1.21 2012/05/08 13:04:48 okan Exp $

COMMENT=		high performance embedded database library

DISTNAME=		qdbm-1.8.78
CATEGORIES=		databases
SHARED_LIBS=		qdbm	14.14

HOMEPAGE=		http://fallabs.com/qdbm/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/

WANTLIB=		c z
MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-zlib \
			--enable-iconv ${CONFIGURE_SHARED}

MAKE_FLAGS=		LIBVER=${LIBqdbm_VERSION:R} LIBREV=${LIBqdbm_VERSION:E}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
