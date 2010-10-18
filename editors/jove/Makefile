# $OpenBSD: Makefile,v 1.20 2010/10/18 18:00:16 espie Exp $
#

COMMENT=	Jonathan's Own Version of Emacs

DISTNAME=	jove-4.16
PKGNAME=	${DISTNAME}p1
CATEGORIES=	editors

MASTER_SITES=	ftp://ftp.cs.toronto.edu/pub/moraes/jove/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

WRKDIST=	${WRKDIR}/jove

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
