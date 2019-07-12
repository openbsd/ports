# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:38 sthen Exp $

COMMENT=	Sendmail Log Analysis Report

VERSION=	1.4
DISTNAME=	sma-${VERSION}
REVISION=	1
CATEGORIES=	mail

HOMEPAGE=	http://www.klake.org/sma/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.klake.org/sma/dl/

NO_TEST=	Yes
ALL_TARGET=	sma

pre-patch:
	@perl -pi -e 's,./sma.conf,${SYSCONFDIR}/sma.conf,g' \
		${WRKSRC}/docs/sma.8 ${WRKSRC}/conf.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sma ${PREFIX}/bin/sma
	${INSTALL_MAN} ${WRKSRC}/docs/sma.8 ${PREFIX}/man/man8/sma.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sma
	${INSTALL_DATA} ${WRKSRC}/sma.conf ${PREFIX}/share/examples/sma
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sma
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sma

.include <bsd.port.mk>
