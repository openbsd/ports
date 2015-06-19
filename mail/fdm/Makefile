# $OpenBSD: Makefile,v 1.19 2015/06/19 08:53:44 sthen Exp $

COMMENT=	fetch, filter and deliver mail

V=		1.8
DISTNAME=	fdm-$V
CATEGORIES=	mail

MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB= c crypto ssl z tdb>=3.0

MASTER_SITES=	https://github.com/nicm/fdm/releases/download/$V/

LIB_DEPENDS +=	databases/tdb>=1.2.7

FAKE_FLAGS=	PREFIX=${PREFIX}

do-configure:
	cd ${WRKSRC} && ksh configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fdm
	${INSTALL_SCRIPT} ${WRKSRC}/fdm-sanitize ${PREFIX}/share/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fdm
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/fdm

.include <bsd.port.mk>
