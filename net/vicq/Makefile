# $OpenBSD: Makefile,v 1.2 2001/12/07 01:05:53 kevlo Exp $

COMMENT=	"text-based ICQ implementation"

DISTNAME=	vicq-0.3
CATEGORIES=     net
NEED_VERSION=	1.500
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://gonzo.kiev.ua/projects/vicq/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Term-ReadLine-Gnu

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/vicq

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vicq
	${INSTALL_PROGRAM} ${WRKSRC}/vicq ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/vicqrc.example ${PREFIX}/share/examples/vicq

.include <bsd.port.mk>
