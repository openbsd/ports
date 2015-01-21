# $OpenBSD: Makefile,v 1.13 2015/01/21 06:23:34 bentley Exp $

COMMENT=	text-based ICQ implementation

DISTNAME=	vicq-0.4.1
CATEGORIES=     net
MASTER_SITES=	http://gonzo.kiev.ua/projects/vicq.old/
REVISION =	0

HOMEPAGE=	http://gonzo.kiev.ua/projects/vicq/

PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Term-ReadLine-Gnu

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/vicq

post-extract:
	@mv ${WRKSRC}/Net/vICQ/* ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vicq
	${INSTALL_PROGRAM} ${WRKSRC}/vicq ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/vicqrc.example ${PREFIX}/share/examples/vicq

.include <bsd.port.mk>
