# $OpenBSD: Makefile,v 1.16 2005/06/13 20:03:14 avsm Exp $
# $FreeBSD: ports/devel/cvs2cl/Makefile,v 1.8 2000/07/09 03:15:07 knu Exp $

COMMENT=	"generate GNU-style ChangeLogs from CVS repositories"

V=		2.58
DISTNAME=	cvs2cl.pl-${V}
PKGNAME=	cvs2cl-${V}
CATEGORIES=     devel
HOMEPAGE=	http://www.red-bean.com/cvs2cl/
EXTRACT_SUFX=	.gz

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
MASTER_SITES=	ftp://ftp.iDaemons.org/pub/distfiles/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2cl.pl-${V} ${PREFIX}/bin/cvs2cl

.include <bsd.port.mk>
