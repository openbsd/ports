# $OpenBSD: Makefile,v 1.12 2000/03/24 22:11:41 espie Exp $

DISTNAME=	bnetd-0.4.19
CATEGORIES=	games 
NEED_VERSION=	1.195
MASTER_SITES=	http://www.bnetd.org/files/

MAINTAINER=	kevlo@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

HAS_CONFIGURE=Yes
WRKSRC=	${WRKDIST}/src

MAKE_FLAGS=CFLAGS=-O2

do-install:
	cd ${WRKDIST}/bin; ${INSTALL_PROGRAM} * ${PREFIX}/bin
	cd ${WRKDIST}/sbin; ${INSTALL_PROGRAM} * ${PREFIX}/sbin
	cd ${WRKDIST}/man; ${INSTALL_MAN}  bnchat.1 bnetd.1 bnftp.1 bnpass.1 ${PREFIX}/man/man1; ${INSTALL_MAN} bnetd.conf.4 bntext.4 bnmotd.txt.4 bnnews.txt.4 ${PREFIX}/man/man4
	${INSTALL_DATA_DIR} ${PREFIX}/bnetd && cd ${WRKDIST} && cp -R files users conf reports ${PREFIX}/bnetd


.include <bsd.port.mk>
