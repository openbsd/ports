# $OpenBSD: Makefile,v 1.4 2000/12/07 17:04:38 naddy Exp $
# $FreeBSD: ports/devel/cvsweb/Makefile,v 1.28 2000/09/23 20:48:45 knu Exp $

DISTNAME=	cvsweb-1.104.1.42
CATEGORIES=	devel www
NEED_VERSION=	1.340
HOMEPAGE=	http://stud.fh-heilbronn.de/~zeller/cgi/cvsweb.cgi/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/knu/

NO_BUILD=	Yes
WRKDIST=	${WRKDIR}/cvsweb

PREFIX=		/var/www
SYSCONFDIR=	${PREFIX}/conf

do-configure:
	perl -i -pe 's@%%SYSCONFDIR%%@${SYSCONFDIR}@g' ${WRKSRC}/cvsweb.cgi

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/cgi-bin
	${INSTALL_SCRIPT} ${WRKSRC}/cvsweb.cgi ${PREFIX}/cgi-bin/cvsweb
	${INSTALL_DATA_DIR} ${SYSCONFDIR}
	${INSTALL_DATA} ${WRKSRC}/cvsweb.conf ${SYSCONFDIR}/cvsweb.conf-dist

.include <bsd.port.mk>
