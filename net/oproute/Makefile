# $OpenBSD: Makefile,v 1.8 2004/12/16 00:31:24 alek Exp $

COMMENT=		"network performance measuring tool"

DISTNAME=		oproute-0.7
PKGNAME=		${DISTNAME}p1
CATEGORIES=    		net
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://www.oproute.net/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ 

MASTER_SITES=		ftp://ftp.opnix.com/oproute/ \
			http://www.mirrors.wiretapped.net/security/network-monitoring/oproute/

MAKE_FLAGS=		CXX="${CXX}" CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes
			
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oproute
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/oproute
	@strip ${PREFIX}/bin/oproute

.include <bsd.port.mk>
