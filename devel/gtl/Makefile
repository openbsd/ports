# $OpenBSD: Makefile,v 1.2 2001/02/05 10:25:41 reinhard Exp $

BROKEN=		"changed download policy; sources no longer available"

DISTNAME=	GTL-0.3.3
PKGNAME=	gtl-0.3.3
CATEGORIES=	devel
NEED_VERSION=	1.351

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

LICENSE_TYPE=		no-commercial-use
PERMIT_PACKAGE_CDROM=	"redistribution requires written permission"
PERMIT_PACKAGE_FTP=	"redistribution requires written permission"
PERMIT_DISTFILES_CDROM=	"redistribution requires written permission"	
PERMIT_DISTFILES_FTP=	"redistribution requires written permission"

HOMEPAGE=	http://infosun.fmi.uni-passau.de/GTL/

MASTER_SITES=	${HOMEPAGE}archive/

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

CONFIGURE_STYLE= gnu
MAKE_ENV+=	GTL_VERS="0:3"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtl/icons
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.html ${PREFIX}/share/doc/gtl 
	${INSTALL_DATA} ${WRKSRC}/doc/html/icons/*.gif ${WRKSRC}/doc/html/icons/*.jpeg ${PREFIX}/share/doc/gtl/icons 
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gtl 
	${INSTALL_DATA_DIR} ${PREFIX}/include/GTL 
	${INSTALL_DATA} ${WRKSRC}/include/GTL/*.h ${PREFIX}/include/GTL 
	${INSTALL_DATA} ${WRKSRC}/src/libGTL.la ${PREFIX}/lib/libGTL.la
	${INSTALL_DATA} ${WRKSRC}/src/.libs/libGTL.so.0.3 ${PREFIX}/lib/libGTL.so.0.3
	${INSTALL_DATA} ${WRKSRC}/src/.libs/libGTL.a ${PREFIX}/lib/libGTL.a

.include <bsd.port.mk>
