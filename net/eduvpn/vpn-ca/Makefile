COMMENT=	simple CA to manage server and client certificates

V=		4.0.2
DISTNAME=	vpn-ca-$V

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

BUILD_DEPENDS=	textproc/scdoc \
		lang/go

MAKE_FLAGS=     GOBUILDFLAGS="-v -buildvcs=false -p=${MAKE_JOBS}"
ALL_TARGET=     vpn-ca
PORTHOME=       ${WRKDIR}

post-build:
	scdoc < ${WRKSRC}/vpn-ca.1.scd > ${WRKSRC}/vpn-ca.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vpn-ca
	cd ${WRKSRC}; ${INSTALL_DATA} *.md LICENSE ${PREFIX}/share/doc/vpn-ca/
	${INSTALL_MAN} ${WRKSRC}/vpn-ca.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
