# OpenBSD makefile for:	freefonts
# Version required:	0.10
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.10 2001/05/06 04:41:13 lebel Exp $
#

COMMENT=	"collection of ATM fonts from the CICA archives"

DISTNAME=	freefonts-0.10
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/fonts/

HOMEPAGE=	http://www.gimp.org/fonts.html
		
MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
USE_X11=	Yes
NO_BUILD=	Yes
FREEFONTDIR=	${PREFIX}/lib/X11/fonts

do-install:
	${INSTALL_DATA_DIR} ${FREEFONTDIR}
	cd ${WRKDIST} && tar cf - freefont | (cd ${FREEFONTDIR} && tar -xf -)

.include <bsd.port.mk>
