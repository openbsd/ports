# $OpenBSD: Makefile,v 1.15 2000/02/12 22:07:54 espie Exp $

DISTNAME=	rsync-2.4.1
CATEGORIES=	net
MASTER_SITES=	ftp://rsync.samba.org/pub/rsync/

NEED_VERSION=	1.60

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	Yes
PERMIT_PKG_FTP=		Yes
PERMIT_DISTF_CDROM=	Yes
PERMIT_DISTF_FTP=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes

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
