# OpenBSD makefile for:   xfishtank
# Version required:    2.2
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.13 2002/03/21 21:25:56 espie Exp $
#

COMMENT=	"fish swim in the background of your screen"

DISTNAME=	xfishtank-2.2
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.uni-koeln.de/windows/xcontrib/

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= imake noman
WRKDIST=	${WRKDIR}/xfishtank2.0

post-patch:
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} clean

.include <bsd.port.mk>
