# $OpenBSD: Makefile,v 1.62 2011/04/02 15:13:25 ajacoutot Exp $

COMMENT =	mirroring/synchronization over low bandwidth links

DISTNAME =	rsync-3.0.8
CATEGORIES =	net
HOMEPAGE =	http://rsync.samba.org/

REVISION =	0

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv3
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
		--with-rsh="ssh -T" \
		--with-nobody-group=_rsync

DOCDIR =	${PREFIX}/share/doc/rsync
USE_GROFF =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/rsyncd.conf.5

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/rsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}

.include <bsd.port.mk>
