# $OpenBSD: Makefile,v 1.15 2013/03/11 11:41:33 espie Exp $

COMMENT=	graphical display for the current uvm status

DISTNAME=	xuvmstat20050909
PKGNAME=	xuvmstat-20050909
REVISION =	0
CATEGORIES=     sysutils x11

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c pthread-stubs xcb

MASTER_SITES=	http://www.netbsd.org/~chuck/gz/

WRKDIST=	${WRKDIR}/xuvmstat
MAKE_ENV=	X11BASE="${X11BASE}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xuvmstat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xuvmstat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xuvmstat

.include <bsd.port.mk>
