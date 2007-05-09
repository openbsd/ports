# $OpenBSD: Makefile,v 1.8 2007/05/09 12:56:39 kurt Exp $

COMMENT=	"text-based ICQ implementation"

DISTNAME=	vicq-0.4.1
CATEGORIES=     net
MASTER_SITES=	http://gonzo.kiev.ua/projects/vicq.old/

HOMEPAGE=	http://gonzo.kiev.ua/projects/vicq/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP= 	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes 

RUN_DEPENDS=	:p5-Term-ReadLine-Gnu-*:devel/p5-Term-ReadLine-Gnu

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/vicq

post-extract:
	@mv ${WRKSRC}/Net/vICQ/* ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vicq
	${INSTALL_PROGRAM} ${WRKSRC}/vicq ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/vicqrc.example ${PREFIX}/share/examples/vicq

.include <bsd.port.mk>
