# $FreeBSD: ports/net/fping/Makefile,v 1.8 2000/03/22 00:26:51 obrien Exp $
# $OpenBSD: Makefile,v 1.5 2000/12/14 13:23:00 espie Exp $

DISTNAME=	part01
PKGNAME=	fping-1.20
CATEGORIES=	net
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.uu.net/usenet/comp.sources.unix/volume26/fping/ \
		ftp://ftp.digital.com/pub/usenet/comp.sources.unix/volume26/fping/ \
		ftp://ftp.wustl.edu/usenet/comp.sources.unix/volume26/fping/ \
		ftp://ftp.isnet.is/pub/Usenet/Usenet.src/comp.sources.unix/v26/fping/

EXTRACT_SUFX=	.Z
EXTRACT_CASES=*.Z) zcat ${FULLDISTDIR}/$$archive| sed -e '1,/Archive-Name/d' | /bin/sh;;

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

DIST_SUBDIR=	fping
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fping ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/fping.man ${PREFIX}/man/man8/fping.8
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/fping
	${INSTALL_MAN} ${WRKBUILD}/README* ${PREFIX}/share/doc/fping

.include <bsd.port.mk>
