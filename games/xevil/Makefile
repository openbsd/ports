# $OpenBSD: Makefile,v 1.13 2002/03/21 20:57:07 espie Exp $
#

COMMENT=	"side-view, fast-action, kill everything type of game"

DISTNAME=	xevil1.5
PKGNAME=	xevil-1.5
CATEGORIES=	games
NEED_VERSION=	1.515

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games/xevil1.5
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

ALL_TARGET=	freebsd

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
