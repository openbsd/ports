# $OpenBSD: Makefile,v 1.8 2001/01/11 13:19:37 avsm Exp $

DISTNAME=	daemontools-0.70
CATEGORIES=	sysutils

MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>
HOMEPAGE=	http://cr.yp.to/daemontools.html

MASTER_SITES=	http://cr.yp.to/daemontools/ \
		ftp://ftp.id.wustl.edu/pub/qmail/
MASTER_SITES0=	ftp://ftp.innominate.org/gpa/djb/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-man${EXTRACT_SUFX}:0

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check

MAN8LIST=	envuidgid multilog setuidgid supervise svok svstat \
		tai64nlocal envdir fghack setlock softlimit svc svscan tai64n

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

post-install:
.for i in ${MAN8LIST}
	${INSTALL_MAN} ${WRKDIR}/${DISTNAME}-man/$i.8 ${PREFIX}/man/man8
.endfor

.include <bsd.port.mk>
