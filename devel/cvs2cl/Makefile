# $OpenBSD: Makefile,v 1.5 2000/12/05 12:53:40 avsm Exp $
# $FreeBSD: ports/devel/cvs2cl/Makefile,v 1.8 2000/07/09 03:15:07 knu Exp $

DISTNAME=	cvs2cl-2.30
DISTFILES=	2.30
DIST_SUBDIR=	cvs2cl

CATEGORIES=     devel
NEED_VERSION=	1.340

HOMEPAGE=	http://www.red-bean.com/cvs2cl/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# (license is GPL)
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.red-bean.com/cvs2cl/get-rev.cgi?revision=
EXTRACT_ONLY=
NO_BUILD=	Yes
SEPARATE_BUILD=	concurrent

DIST_LOC=	${DISTDIR}/${DIST_SUBDIR}/${DISTFILES}
FETCH_BEFORE_ARGS= -o ${DIST_LOC}

do-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}
	${INSTALL_SCRIPT} ${DIST_LOC} ${WRKSRC}/cvs2cl

do-install:
	${INSTALL_SCRIPT} ${DIST_LOC} ${PREFIX}/bin/cvs2cl

.include <bsd.port.mk>
