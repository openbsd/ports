# $OpenBSD: Makefile,v 1.1.1.1 2009/04/26 19:36:33 jasper Exp $

COMMENT=		simple, powerful configuration-file parser

DISTNAME=		dotconf-1.1.0
SHARED_LIBS +=  dotconf              0.0      # .0.0
SHARED_LIBS +=  dotconf-1.1          0.0      # .0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.azzit.de/dotconf/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/v1.1/

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dotconf/
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/dotconf/

.include <bsd.port.mk>
