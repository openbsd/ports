# $OpenBSD: Makefile,v 1.11 2009/08/10 06:34:30 kili Exp $

COMMENT=	graphical display for the current uvm status

DISTNAME=	xuvmstat20050909
PKGNAME=	xuvmstat-20050909p0
CATEGORIES=     sysutils x11

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		X11 c pthread-stubs xcb

MASTER_SITES=	http://www.netbsd.org/~chuck/gz/

WRKDIST=	${WRKDIR}/xuvmstat
MAKE_ENV=	X11BASE="${X11BASE}"

NO_REGRESS=	Yes
USE_X11=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xuvmstat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xuvmstat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xuvmstat

.include <bsd.port.mk>
