# $OpenBSD: Makefile,v 1.27 2016/04/09 20:14:48 naddy Exp $

COMMENT=		high performance embedded database library

DISTNAME=		qdbm-1.8.78
CATEGORIES=		databases
SHARED_LIBS=		qdbm	14.14
REVISION=		0

HOMEPAGE=		http://fallabs.com/qdbm/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/

WANTLIB=		c iconv z
LIB_DEPENDS=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-zlib \
			--enable-iconv

MAKE_FLAGS=		LIBVER=${LIBqdbm_VERSION:R} LIBREV=${LIBqdbm_VERSION:E}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
