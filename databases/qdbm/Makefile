# $OpenBSD: Makefile,v 1.24 2015/03/16 18:07:38 naddy Exp $

COMMENT=		high performance embedded database library

DISTNAME=		qdbm-1.8.78
CATEGORIES=		databases
SHARED_LIBS=		qdbm	14.14
REVISION=		0

HOMEPAGE=		http://fallabs.com/qdbm/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/

WANTLIB=		c z
MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-zlib \
			--enable-iconv ${CONFIGURE_SHARED}

MAKE_FLAGS=		LIBVER=${LIBqdbm_VERSION:R} LIBREV=${LIBqdbm_VERSION:E}
.if ${MACHINE_ARCH} == "vax"
MAKE_FLAGS +=    MYLIBS=libqdbm.a
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
