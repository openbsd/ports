# $OpenBSD: Makefile,v 1.5 2002/05/13 08:36:33 jsyn Exp $

COMMENT=        	"hostname scanner"

DISTNAME=		resolv-0.9.9a
CATEGORIES=     	net
NEED_VERSION=   	1.528
MASTER_SITES=		${MASTER_SITE_PACKETSTORM:=UNIX/scanners/}

MAINTAINER=     	Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CLAGS}"

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/resolv ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/resolv
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/resolv
	${INSTALL_DATA} ${WRKSRC}/LEEME ${PREFIX}/share/doc/resolv

.include <bsd.port.mk>
