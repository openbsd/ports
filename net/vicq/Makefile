# $OpenBSD: Makefile,v 1.4 2002/03/30 02:11:27 espie Exp $

COMMENT=	"text-based ICQ implementation"

DISTNAME=	vicq-0.4
CATEGORIES=     net
NEED_VERSION=	1.504
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://gonzo.kiev.ua/projects/vicq/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   No

RUN_DEPENDS=	::devel/p5-Term-ReadLine-Gnu

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/vicq

NO_REGRESS=	Yes

post-extract:
	@mv ${WRKSRC}/Net/vICQ/* ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vicq
	${INSTALL_PROGRAM} ${WRKSRC}/vicq ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/vicqrc.example ${PREFIX}/share/examples/vicq

.include <bsd.port.mk>
