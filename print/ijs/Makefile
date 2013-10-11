# $OpenBSD: Makefile,v 1.8 2013/10/11 23:50:39 naddy Exp $

COMMENT=		raster image transmission library

DISTNAME=		ijs-0.35
REVISION=		1
CATEGORIES=		print

SHARED_LIBS=		ijs 0.0

HOMEPAGE=		http://www.openprinting.org/download/ijs/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/download/


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ijs
	${INSTALL_DATA} ${WRKSRC}/ijs_spec.pdf ${PREFIX}/share/doc/ijs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ijs
	${INSTALL_DATA} ${WRKSRC}/ijs_*_example.c \
			${PREFIX}/share/examples/ijs

.include <bsd.port.mk>
