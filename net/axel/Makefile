COMMENT=	tiny download accelerator

V=		2.17.11
DISTNAME=	axel-$V

CATEGORIES=	net

HOMEPAGE=	https://github.com/axel-download-accelerator/axel

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/axel-download-accelerator/axel/releases/download/v${V}/

WANTLIB += c crypto pthread ssl

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

pre-configure:
	@sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/doc/axel.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/axel
	${INSTALL_DATA} ${WRKSRC}/doc/axelrc.example \
		${PREFIX}/share/examples/axel/

.include <bsd.port.mk>
