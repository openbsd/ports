# $OpenBSD: Makefile,v 1.2 2000/09/11 16:32:12 avsm Exp $
# $FreeBSD: ports/devel/cvs2cl/Makefile,v 1.8 2000/07/09 03:15:07 knu Exp $

DISTNAME=	cvs2cl-2.18
CATEGORIES=     devel
NEED_VERSION=	1.326

HOMEPAGE=	http://www.red-bean.com/~kfogel/cvs2cl.shtml
MAINTAINER=	avsm@openbsd.org

# (license is GPL)
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

SEPARATE_BUILD=	concurrent
NO_BUILD=	Yes
WRKDIST=	${WRKDIR}/cvs2cl

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/cvs2cl.pl ${PREFIX}/bin/cvs2cl

.include <bsd.port.mk>
