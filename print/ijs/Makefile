# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:55 sthen Exp $

COMMENT=		raster image transmission library

DISTNAME=		ijs-0.35
REVISION=		3
CATEGORIES=		print

SHARED_LIBS=		ijs 0.0

HOMEPAGE=		https://www.openprinting.org/download/ijs/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/download/


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ijs
	${INSTALL_DATA} ${WRKSRC}/ijs_spec.pdf ${PREFIX}/share/doc/ijs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ijs
	${INSTALL_DATA} ${WRKSRC}/ijs_*_example.c \
			${PREFIX}/share/examples/ijs

.include <bsd.port.mk>
