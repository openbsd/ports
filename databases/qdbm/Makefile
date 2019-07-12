# $OpenBSD: Makefile,v 1.30 2019/07/12 20:44:01 sthen Exp $

COMMENT=		high performance embedded database library

DISTNAME=		qdbm-1.8.78
CATEGORIES=		databases
SHARED_LIBS=		qdbm	14.14
REVISION=		2

HOMEPAGE=		https://fallabs.com/qdbm/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/

WANTLIB=		c iconv z
LIB_DEPENDS=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-zlib \
			--enable-iconv

MAKE_FLAGS=		LIBVER=${LIBqdbm_VERSION:R} \
			LIBREV=${LIBqdbm_VERSION:E} \
			CC="${CC}" \
			CFLAGS="-Wall -pedantic -fPIC -fsigned-char ${CFLAGS}"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
