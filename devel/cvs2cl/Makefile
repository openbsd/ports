# $OpenBSD: Makefile,v 1.12 2002/10/25 22:37:52 naddy Exp $
# $FreeBSD: ports/devel/cvs2cl/Makefile,v 1.8 2000/07/09 03:15:07 knu Exp $

COMMENT=	"generate GNU-style ChangeLogs from CVS repositories"

V=		2.38
DISTNAME=	cvs2cl-${V}
CATEGORIES=     devel
HOMEPAGE=	http://www.red-bean.com/cvs2cl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.red-bean.com/cvs2cl/get-rev.cgi?revision=
FETCH_BEFORE_ARGS= -o ${FULLDISTDIR}/${DISTFILES}
DISTFILES=	${V}
DIST_SUBDIR=	cvs2cl
EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive cvs2cl ;;

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2cl ${PREFIX}/bin

.include <bsd.port.mk>
