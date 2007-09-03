# $OpenBSD: Makefile,v 1.1.1.1 2007/09/03 09:20:54 ajacoutot Exp $

COMMENT=		raster image transmission library

DISTNAME=		ijs-0.35
CATEGORIES=		print
SHARED_LIBS=		ijs 0.0

HOMEPAGE=		http://www.linuxprinting.org/ijs/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ijs
	${INSTALL_DATA} ${WRKSRC}/ijs_spec.pdf ${PREFIX}/share/doc/ijs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ijs
	${INSTALL_DATA} ${WRKSRC}/ijs_*_example.c \
			${PREFIX}/share/examples/ijs

.include <bsd.port.mk>
