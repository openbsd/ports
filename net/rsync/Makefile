# $OpenBSD: Makefile,v 1.27 2001/07/13 11:24:31 naddy Exp $

COMMENT=	"mirroring/synchronization over low bandwidth links"
DISTNAME=	rsync-2.4.6
CATEGORIES=	net
NEED_VERSION=	1.387
MASTER_SITES=	ftp://ftp.samba.org/pub/rsync/
MASTER_SITES+=	ftp://ftp.samba.org/pub/rsync/old-versions/
MASTER_SITES+=	ftp://ftp.funet.fi/pub/mirrors/rsync.samba.org/pub/rsync/
HOMEPAGE=	http://rsync.samba.org/


MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

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
