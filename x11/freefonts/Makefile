# OpenBSD makefile for:	freefonts
# Version required:	0.10
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.6 2000/04/18 10:34:10 turan Exp $
#

DISTNAME=	freefonts-0.10
CATEGORIES=	x11
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/fonts/

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
USE_X11=	yes

post-install:
	@cat ${PKGDIR}/DESCR

.include <bsd.port.mk>
