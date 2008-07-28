# $OpenBSD: Makefile,v 1.19 2008/07/28 22:29:49 sthen Exp $

COMMENT=	fish swim in the background of your screen

DISTNAME=	xfishtank-2.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.uni-koeln.de/windows/xcontrib/

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	X11 Xau Xdmcp Xext c m

USE_X11=	Yes
CONFIGURE_STYLE= imake noman
WRKDIST=	${WRKDIR}/xfishtank2.0

post-patch:
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} clean

NO_REGRESS=	Yes

.include <bsd.port.mk>
