# $OpenBSD: Makefile,v 1.14 2003/02/04 07:43:38 pvalchev Exp $
# $FreeBSD: ports/devel/cvs2cl/Makefile,v 1.8 2000/07/09 03:15:07 knu Exp $

COMMENT=	"generate GNU-style ChangeLogs from CVS repositories"

V=		2.38
DISTNAME=	cvs2cl-${V}
PKGNAME=	${DISTNAME}p1
CATEGORIES=     devel
HOMEPAGE=	http://www.red-bean.com/cvs2cl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BACKUP}

WRKDIST=	${WRKDIR}/cvs2cl
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2cl.pl ${PREFIX}/bin/cvs2cl

.include <bsd.port.mk>
