# $OpenBSD: Makefile,v 1.12 1999/11/21 23:42:52 espie Exp $

DISTNAME=	rsync-2.3.2
CATEGORIES=	net
MASTER_SITES=	ftp://rsync.samba.org/pub/rsync/

NEED_VERSION=	1.60

MAINTAINER=	espie@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes

DOCDIR=	${PREFIX}/share/doc/rsync

# not MESSAGE, explains the build warning
post-build:
	@echo "(this use of mktemp is actually correct)"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/test.sh ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/rsyncstats ${DOCDIR}

.include <bsd.port.mk>
