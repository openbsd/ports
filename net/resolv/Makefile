# $OpenBSD: Makefile,v 1.1.1.1 2001/09/16 00:14:18 jcs Exp $

COMMENT=        "Hostname scanner"

DISTNAME=	resolv-0.9.9a
CATEGORIES=     net
NEED_VERSION=   1.310
MASTER_SITES=   http://packetstormsecurity.com/UNIX/scanners/

MAINTAINER=     Jose <jose@openbsd.org.mx>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/resolv ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/resolv
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/resolv
	${INSTALL_DATA} ${WRKSRC}/LEEME ${PREFIX}/share/doc/resolv

.include <bsd.port.mk>
