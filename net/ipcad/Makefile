# $OpenBSD: Makefile,v 1.7 2002/09/01 18:49:01 mpech Exp $
# $RuOBSD: Makefile,v 1.1.1.1 2002/04/08 02:46:36 form Exp $

COMMENT=		"IP accounting daemon simulating Cisco ip accounting"

DISTNAME=		ipcad-2.6.2
CATEGORIES=		net
HOMEPAGE=		http://www.spelio.net.ru/soft/

MAINTAINER=		Alexander Yurchenko <grange@rt.mipt.ru>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu

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
.for f in AUTHORS COPYRIGHT README
	${INSTALL_DATA} ${WRKDIST}/${f} ${PREFIX}/share/doc/ipcad
.endfor

.include <bsd.port.mk>
