# $OpenBSD: Makefile,v 1.8 2000/10/22 15:43:51 espie Exp $
#

DISTNAME=	piewm
PKGNAME=	piewm-1.0
CATEGORIES=	x11
NEED_VERSION=	1.305

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.x.org/R5contrib/
EXTRACT_SUFX=	.tar.Z

CONFIGURE_STYLE=imake


# piewm.tar.Z includes and old version of xpm, and also a bunch of .o
# files plus an executable.  Get rid of them.
# 
post-extract:
	@rm -rf ${WRKDIR}/xpm
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
