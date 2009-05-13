# $OpenBSD: Makefile,v 1.57 2009/05/13 15:08:23 naddy Exp $

COMMENT =	mirroring/synchronization over low bandwidth links

DISTNAME =	rsync-3.0.6
CATEGORIES =	net
HOMEPAGE =	http://rsync.samba.org/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
WANTLIB =		c

MASTER_SITES =	ftp://ftp.samba.org/pub/rsync/ \
		ftp://ftp.samba.org/pub/rsync/old-versions/ \
		http://ftp.samba.org/ftp/rsync/ \
		ftp://ftp.funet.fi/pub/mirrors/samba.org/pub/rsync/

#SEPARATE_BUILD =	simple
CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--with-included-popt \
		--with-rsyncd-conf="${SYSCONFDIR}/rsyncd.conf" \
		--with-rsh="ssh -T"

DOCDIR =	${PREFIX}/share/doc/rsync

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/rsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}

.include <bsd.port.mk>
