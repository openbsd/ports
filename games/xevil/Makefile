# $OpenBSD: Makefile,v 1.17 2002/12/23 00:37:50 pvalchev Exp $
#

COMMENT=	"side-view, fast-action, kill everything type of game"

DISTNAME=	xevil1.5
PKGNAME=	xevil-1.5
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/xevil1.5/}
EXTRACT_SUFX=	.tar.Z

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

ALL_TARGET=	freebsd
MAKE_ENV=	CXX="${CXX}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xevil $(PREFIX)/bin
	${INSTALL_MAN} ${WRKSRC}/xevil.6 $(PREFIX)/man/man6
	cd ${WRKSRC} && ${INSTALL_DATA} \
		${WRKSRC}/app-defaults/XEvil.iris \
		${WRKSRC}/app-defaults/XEvil.mac \
		${WRKSRC}/app-defaults/XEvil.sun3 \
		${WRKSRC}/app-defaults/XEvil.sun4_sparc \
		$(PREFIX)/lib/X11/app-defaults/

.include <bsd.port.mk>
