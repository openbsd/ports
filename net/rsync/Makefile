# $OpenBSD: Makefile,v 1.40 2003/12/04 17:54:17 espie Exp $

COMMENT=	"mirroring/synchronization over low bandwidth links"

DISTNAME=	rsync-2.5.7
CATEGORIES=	net
HOMEPAGE=	http://rsync.samba.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.samba.org/pub/rsync/ \
		ftp://ftp.samba.org/pub/rsync/old-versions/ \
		http://ftp.samba.org/ftp/rsync/ \
		ftp://ftp.funet.fi/pub/mirrors/rsync.samba.org/pub/rsync/

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-included-popt \
			--with-rsh=ssh

DOCDIR=	${PREFIX}/share/doc/rsync

post-patch:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/rsync.h

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/rsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/test.sh ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/rsyncstats ${DOCDIR}

.include <bsd.port.mk>
