# $OpenBSD: Makefile,v 1.31 2002/03/15 23:54:53 espie Exp $

COMMENT=	"mirroring/synchronization over low bandwidth links"

DISTNAME=	rsync-2.5.4
CATEGORIES=	net
NEED_VERSION=	1.504
HOMEPAGE=	http://rsync.samba.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.samba.org/pub/rsync/ \
		ftp://ftp.samba.org/pub/rsync/old-versions/ \
		ftp://ftp.funet.fi/pub/mirrors/rsync.samba.org/pub/rsync/

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-ipv6

DOCDIR=	${PREFIX}/share/doc/rsync

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/rsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/test.sh ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/rsyncstats ${DOCDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
