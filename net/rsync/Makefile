# $OpenBSD: Makefile,v 1.19 2000/03/24 22:11:53 espie Exp $

DISTNAME=	rsync-2.4.1
CATEGORIES=	net
NEED_VERSION=	1.216
MASTER_SITES=	ftp://rsync.samba.org/pub/rsync/


MAINTAINER=	espie@openbsd.org

FAKE=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes

DOCDIR=	${PREFIX}/share/doc/rsync

# not MESSAGE, explains the build warning
post-build:
	@echo "(this use of mktemp is actually correct)"

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/rsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/test.sh ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/rsyncstats ${DOCDIR}

.include <bsd.port.mk>
