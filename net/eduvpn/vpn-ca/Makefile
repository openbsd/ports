COMMENT=	simple CA to manage server and client certificates

V=		4.0.1
MASTER_SITES=	https://git.sr.ht/~fkooman/vpn-ca/refs/download/$V/
DISTNAME=	vpn-ca-$V
EXTRACT_SUFX=	.tar.xz

# Debian packaging in https://git.sr.ht/~fkooman/vpn-ca.deb/tree
HOMEPAGE=	https://git.sr.ht/~fkooman/vpn-ca

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/go
WRKDIST=	${WRKDIR}/${DISTNAME}

WANTLIB=	c pthread

BUILD_DEPENDS=	textproc/scdoc

post-build:
	scdoc < ${WRKSRC}/vpn-ca.1.scd > ${WRKSRC}/vpn-ca.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vpn-ca
	cd ${WRKSRC}; ${INSTALL_DATA} *.md LICENSE ${PREFIX}/share/doc/vpn-ca/
	${INSTALL_MAN} ${WRKSRC}/vpn-ca.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
