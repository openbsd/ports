# $OpenBSD: Makefile,v 1.5 2002/05/13 09:06:08 jsyn Exp $

COMMENT=	"powerful webserver security scanner"

DISTNAME=	arirang-1.6beta
CATEGORIES= 	security
NEED_VERSION= 	1.528

MASTER_SITES=	http://www.monkey.org/~pilot/arirang/ \
                http://search.iland.co.kr/twwwscan/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/cgi-scanners/}

HOMEPAGE=	http://www.monkey.org/~pilot

MAINTAINER=	pilot <pilot@monkey.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arirang ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/*.uxe ${PREFIX}/share/arirang


.include <bsd.port.mk>
