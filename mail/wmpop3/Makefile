# $OpenBSD: Makefile,v 1.3 2001/03/14 12:23:17 wilfried Exp $

DISTNAME=		WMPop3-0.5.6a
PKGNAME=		${DISTNAME:L}
CATEGORIES=		mail x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.cs.mun.ca/~scotth/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}download/ \
			ftp://ftp.funet.fi/pub/FreeBSD/eurocrypt/distfiles/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes

WRKDIST=		${WRKDIR}/${PKGNAME}
WRKSRC=			${WRKDIST}/wmpop3

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmpop3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA} ${WRKBUILD}/wmpop3rc ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmpop3
	${INSTALL_DATA} ${WRKDIR}/${PKGNAME}/README ${PREFIX}/share/doc/wmpop3

.include <bsd.port.mk>
