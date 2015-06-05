# $OpenBSD: Makefile,v 1.24 2015/06/05 08:11:53 bentley Exp $

COMMENT=	fish swim in the background of your screen

DISTNAME=	xfishtank-2.2
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	http://distcache.freebsd.org/ports-distfiles/

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	X11 Xau Xdmcp Xext c m

CONFIGURE_STYLE= imake noman
WRKDIST=	${WRKDIR}/xfishtank2.0

post-patch:
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} clean

NO_TEST=	Yes

.include <bsd.port.mk>
