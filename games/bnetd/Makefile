# $OpenBSD: Makefile,v 1.15 2000/10/22 15:41:59 espie Exp $

DISTNAME=	bnetd-0.4.19
CATEGORIES=	games 
NEED_VERSION=	1.305
MASTER_SITES=	http://www.bnetd.org/files/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	simple
WRKSRC=			${WRKDIST}/src

MAKE_FLAGS=CFLAGS=-O2

do-install:
	cd ${WRKDIST}/bin; ${INSTALL_PROGRAM} * ${PREFIX}/bin
	cd ${WRKDIST}/sbin; ${INSTALL_PROGRAM} * ${PREFIX}/sbin
	cd ${WRKDIST}/man; ${INSTALL_MAN}  bnchat.1 bnetd.1 bnftp.1 bnpass.1 ${PREFIX}/man/man1; ${INSTALL_MAN} bnetd.conf.4 bntext.4 bnmotd.txt.4 bnnews.txt.4 ${PREFIX}/man/man4
	${INSTALL_DATA_DIR} ${PREFIX}/lib/bnetd && cd ${WRKDIST} && cp -R files conf ${PREFIX}/lib/bnetd

.include <bsd.port.mk>
