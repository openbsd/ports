# $OpenBSD: Makefile,v 1.18 2010/11/20 17:22:41 espie Exp $

COMMENT=	stock ticker for GkrellM2

V=		0.5.1
DISTNAME=	gkrellstock-${V}
REVISION=	14
CATEGORIES=	misc

HOMEPAGE=	http://gkrellstock.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellstock/}

RUN_DEPENDS+=	misc/p5-Finance-Quote

WRKDIST=       	${WRKDIR}/gkrellStock-${V}
ALL_TARGET=	gkrellstock.so
PLUGIN=		${WRKSRC}/gkrellstock.so
PERLDIR=	${PREFIX}/libdata/perl5/site_perl/Finance/Quote/

post-install:
	${INSTALL_DATA_DIR} ${PERLDIR}
	${INSTALL_DATA} ${WRKSRC}/Asia.pm ${PERLDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/GetQuote2 ${PREFIX}/bin

.include <bsd.port.mk>
