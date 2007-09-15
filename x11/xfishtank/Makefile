# $OpenBSD: Makefile,v 1.17 2007/09/15 20:04:27 merdely Exp $

COMMENT=	fish swim in the background of your screen

DISTNAME=	xfishtank-2.2
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.uni-koeln.de/windows/xcontrib/

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		X11 Xext c m

USE_X11=	Yes
CONFIGURE_STYLE= imake noman
WRKDIST=	${WRKDIR}/xfishtank2.0

post-patch:
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} clean

NO_REGRESS=	Yes

.include <bsd.port.mk>
