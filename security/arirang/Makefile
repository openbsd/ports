# $OpenBSD: Makefile,v 1.3 2002/01/11 04:59:43 mark Exp $

COMMENT=	"powerful webserver security scanner"

DISTNAME=	arirang-1.6beta
CATEGORIES= 	security
NEED_VERSION= 	1.414

MASTER_SITES=	http://www.monkey.org/~pilot/arirang/ \
                http://search.iland.co.kr/twwwscan/

HOMEPAGE=	http://www.monkey.org/~pilot

MAINTAINER=	pilot <pilot@monkey.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arirang ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/*.uxe ${PREFIX}/share/arirang


.include <bsd.port.mk>
