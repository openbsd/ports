# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:08 sthen Exp $

COMMENT=		simple, powerful configuration-file parser

DISTNAME=		dotconf-1.3
REVISION=		0

SHARED_LIBS +=  dotconf              1.0      # 0.1

CATEGORIES=		devel

HOMEPAGE=		https://github.com/williamh/dotconf

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_FREEBSD}

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dotconf/
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/dotconf/

.include <bsd.port.mk>
