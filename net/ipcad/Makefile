# $OpenBSD: Makefile,v 1.11 2004/12/16 00:31:22 alek Exp $
# $RuOBSD: Makefile,v 1.1.1.1 2002/04/08 02:46:36 form Exp $

COMMENT=		"IP accounting daemon simulating Cisco ip accounting"

DISTNAME=		ipcad-3.4.4
CATEGORIES=		net
HOMEPAGE=		http://sourceforge.net/projects/ipcad/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ipcad/}

CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ipcad ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/ipcad.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKBUILD}/ipcad.conf.5 ${PREFIX}/man/man5
	perl -pi -e 's:%%SYSCONFDIR%%:${SYSCONFDIR}:' \
		${PREFIX}/man/man5/ipcad.conf.5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipcad
	${INSTALL_DATA} ${WRKDIST}/ipcad.conf \
		${PREFIX}/share/examples/ipcad/ipcad.conf.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ipcad
.for f in AUTHORS BUGS COPYING README
	${INSTALL_DATA} ${WRKDIST}/${f} ${PREFIX}/share/doc/ipcad
.endfor

.include <bsd.port.mk>
