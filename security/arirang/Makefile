# $OpenBSD: Makefile,v 1.12 2010/08/30 20:46:29 landry Exp $

COMMENT=	powerful webserver security scanner

DISTNAME=	arirang-1.7
CATEGORIES= 	security

MASTER_SITES=	http://monkey.org/~pilot/arirang/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/cgi-scanners/}

HOMEPAGE=	http://www.monkey.org/~pilot

MAINTAINER=	Jung <moorang@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arirang ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/scanrule/*.uxe ${PREFIX}/share/arirang


.include <bsd.port.mk>
