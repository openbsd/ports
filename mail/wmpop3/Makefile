# $OpenBSD: Makefile,v 1.7 2002/03/21 21:09:18 espie Exp $

COMMENT=		'wm-dockapp; POP3 mail check'

DISTNAME=		WMPop3-0.5.6a
PKGNAME=		${DISTNAME:L}
CATEGORIES=		mail x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://www.cs.mun.ca/~scotth/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}download/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/${PKGNAME}
WRKSRC=			${WRKDIST}/wmpop3

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmpop3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA} ${WRKSRC}/wmpop3rc ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmpop3
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/wmpop3

.include <bsd.port.mk>
