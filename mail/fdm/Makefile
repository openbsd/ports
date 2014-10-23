# $OpenBSD: Makefile,v 1.18 2014/10/23 07:21:06 jasper Exp $

COMMENT=	fetch, filter and deliver mail

DISTNAME=	fdm-1.7
REVISION=	0
CATEGORIES=	mail

HOMEPAGE=	http://fdm.sourceforge.net/
MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

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
