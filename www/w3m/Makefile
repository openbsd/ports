# Makefile for:		w3m
# Version required:	0.1.6
# Date created:		31 Jan 2000
# Who:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/02/15 05:05:26 turan Exp $

DISTNAME=	w3m-0.1.6

CATEGORIES=	www

MASTER_SITES=	\
		ftp://ftp.firedrake.org/w3m/ \
		ftp://ei5nazha.yz.yamagata-u.ac.jp/w3m/ \
		http://www.instinct.org/w3m/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}/w3m

CONFIGURE_ARGS=	-yes
HAS_CONFIGURE=	yes
MAKE_ENV=	DESTDIR=

pre-install:
	${INSTALL_MAN} ${WRKSRC}/doc/w3m.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m/
	${INSTALL_DATA} ${WRKSRC}/doc/[F-Sk-m]* ${PREFIX}/share/doc/w3m/

.include <bsd.port.mk>
