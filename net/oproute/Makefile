# $OpenBSD: Makefile,v 1.6 2002/09/17 08:42:20 pvalchev Exp $

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

MASTER_SITES=		ftp://ftp.opnix.com/pub/oproute/ \
			http://www.wiretapped.net/security/network-monitoring/oproute/ 

MAKE_FLAGS=		CXX="${CXX}" CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes
			
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oproute
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/oproute
	@strip ${PREFIX}/bin/oproute

.include <bsd.port.mk>
