# $OpenBSD: Makefile,v 1.16 2019/07/12 20:50:07 sthen Exp $

COMMENT=		perl module to formating plaintext

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Text-Reform-1.20
CATEGORIES=		textproc
REVISION=		0

# Artistic
PERMIT_PACKAGE=	Yes

DEMOS_DIR =	${PREFIX}/share/examples/p5-Text-Reform

post-install:
	${INSTALL_DATA_DIR} ${DEMOS_DIR}
	@cd ${WRKSRC}/demo/ && pax -rw . ${DEMOS_DIR}
                    
.include <bsd.port.mk>
