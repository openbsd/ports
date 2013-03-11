# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:44 espie Exp $

COMMENT=		perl module to formating plaintext

MODULES=		cpan
DISTNAME=		Text-Reform-1.20
CATEGORIES=		textproc
USE_GROFF =		Yes

MAINTAINER=		Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

DEMOS_DIR =	${PREFIX}/share/examples/p5-Text-Reform

post-install:
	${INSTALL_DATA_DIR} ${DEMOS_DIR}
	@cd ${WRKSRC}/demo/ && pax -rw . ${DEMOS_DIR}
                    
.include <bsd.port.mk>
