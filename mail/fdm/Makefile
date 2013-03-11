# $OpenBSD: Makefile,v 1.17 2013/03/11 11:23:51 espie Exp $

COMMENT=	fetch, filter and deliver mail

DISTNAME=	fdm-1.7
CATEGORIES=	mail

HOMEPAGE=	http://fdm.sourceforge.net/
MAINTAINER=	Nicholas Marriott <nicm@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB= c crypto ssl z tdb>=3.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fdm/}

LIB_DEPENDS +=	databases/tdb>=1.2.7

FAKE_FLAGS=	PREFIX=${PREFIX}

pre-build:
	cd ${WRKSRC} && ksh configure
	cd ${WRKSRC} && awk -ftools/makemanual.awk < MANUAL.in > MANUAL

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fdm
	${INSTALL_SCRIPT} ${WRKSRC}/fdm-sanitize ${PREFIX}/share/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fdm
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/fdm

.include <bsd.port.mk>
