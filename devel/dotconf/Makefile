# $OpenBSD: Makefile,v 1.7 2015/06/05 08:11:53 bentley Exp $

COMMENT=		simple, powerful configuration-file parser

DISTNAME=		dotconf-1.3
REVISION=		0

SHARED_LIBS +=  dotconf              1.0      # 0.1

CATEGORIES=		devel

HOMEPAGE=		https://github.com/williamh/dotconf

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distcache.freebsd.org/ports-distfiles/

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dotconf/
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/dotconf/

.include <bsd.port.mk>
