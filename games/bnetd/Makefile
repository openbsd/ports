# $OpenBSD: Makefile,v 1.20 2002/12/29 15:10:07 fgsch Exp $

COMMENT=	"Battle.net(r) server emulator"

IGNORE=		"has been removed due to legal reasons"

DISTNAME=	bnetd-0.4.19
CATEGORIES=	games 
MASTER_SITES=	http://www.bnetd.org/files/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
WRKSRC=			${WRKDIST}/src
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autoconf

MAKE_FLAGS=CFLAGS=-O2

do-install:
	cd ${WRKDIST}/bin; ${INSTALL_PROGRAM} * ${PREFIX}/bin
	cd ${WRKDIST}/sbin; ${INSTALL_PROGRAM} * ${PREFIX}/sbin
	cd ${WRKDIST}/man; ${INSTALL_MAN}  bnchat.1 bnetd.1 bnftp.1 bnpass.1 ${PREFIX}/man/man1; ${INSTALL_MAN} bnetd.conf.4 bntext.4 bnmotd.txt.4 bnnews.txt.4 ${PREFIX}/man/man4
	${INSTALL_DATA_DIR} ${PREFIX}/lib/bnetd && cd ${WRKDIST} && cp -R files conf ${PREFIX}/lib/bnetd

.include <bsd.port.mk>
