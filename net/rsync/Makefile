# $OpenBSD: Makefile,v 1.9 1999/04/18 20:59:00 espie Exp $
#

DISTNAME= rsync-2.3.1
CATEGORIES=net

NEED_VERSION=1.60


MAINTAINER=		espie@openbsd.org

MASTER_SITES=		ftp://rsync.samba.org/pub/rsync/

SEPARATE_BUILD=concurrent

GNU_CONFIGURE=		yes

# not MESSAGE, explains the build warning
post-build:
	@echo "(this use of mktemp is actually correct)"

DOCDIR=${PREFIX}/share/doc/rsync

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rsync ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN_DIR} ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/test.sh ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/rsyncstats ${DOCDIR}

.include <bsd.port.mk>
