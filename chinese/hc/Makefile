# $OpenBSD: Makefile,v 1.15 2019/07/14 00:39:35 naddy Exp $

COMMENT=	convert between GB and BIG-5 codes

DISTNAME=	zh-hc-3.0
CATEGORIES=	chinese
REVISION =	1

# Fairly restrictive licence
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=	ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/convert/
DISTFILES=	hc-30.tar.gz hc-supp.tab
EXTRACT_ONLY=	hc-30.tar.gz

WRKDIST=	${WRKDIR}/hc3

ALL_TARGET=	hc b2g g2b

NO_TEST=	Yes

pre-patch:
	sed -i 's|malloc.h|stdlib.h|' ${WRKSRC}/hclib.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hc
	${INSTALL_PROGRAM} ${WRKSRC}/hc ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/b2g ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/g2b ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/hc.tab ${PREFIX}/share/hc
	${INSTALL_DATA} ${FULLDISTDIR}/hc-supp.tab ${PREFIX}/share/hc
	${INSTALL_MAN} ${WRKSRC}/hc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
