# $OpenBSD: Makefile,v 1.4 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=		simple, powerful configuration-file parser

DISTNAME=		dotconf-1.1.0
REVISION=		0
SHARED_LIBS +=  dotconf              0.0      # .0.0
SHARED_LIBS +=  dotconf-1.1          0.0      # .0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.azzit.de/dotconf/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/download/v1.1/


CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dotconf/
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/dotconf/

.include <bsd.port.mk>
