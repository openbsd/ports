# $OpenBSD: Makefile,v 1.2 2001/07/03 19:12:55 jsyn Exp $

COMMENT=		"network performance measuring tool"

DISTNAME=		oproute-0.7
CATEGORIES=    		net
NEED_VERSION=		1.417
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://www.oproute.net/

MAINTAINER=		Jason Peel <jsyn@nthought.com>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.opnix.com/pub/oproute/ \
			http://www.wiretapped.net/security/network-monitoring/oproute/ 

MAKE_FLAGS=		CXX="${CXX}" CFLAGS="${CFLAGS}"
			
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oproute
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/oproute
	@strip ${PREFIX}/bin/oproute

.include <bsd.port.mk>
