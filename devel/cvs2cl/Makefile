# $OpenBSD: Makefile,v 1.9 2002/03/21 20:46:24 espie Exp $
# $FreeBSD: ports/devel/cvs2cl/Makefile,v 1.8 2000/07/09 03:15:07 knu Exp $

COMMENT=	"generate GNU-style ChangeLogs from CVS repositories"

DISTNAME=	cvs2cl-2.30
CATEGORIES=     devel
NEED_VERSION=	1.515
HOMEPAGE=	http://www.red-bean.com/cvs2cl/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.red-bean.com/cvs2cl/get-rev.cgi?revision=
FETCH_BEFORE_ARGS= -o ${FULLDISTDIR}/${DISTFILES}
DISTFILES=	2.30
DIST_SUBDIR=	cvs2cl
EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive cvs2cl ;;

NO_BUILD=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2cl ${PREFIX}/bin

.include <bsd.port.mk>
