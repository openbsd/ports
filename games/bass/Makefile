# $OpenBSD: Makefile,v 1.2 2003/08/08 20:15:12 jolan Exp $

COMMENT=	"Beneath A Steel Sky"
DISTNAME=	BASS-CD
DIST_SUBDIR=	bass
PKGNAME=	bass-0	# Unversioned
EXTRACT_SUFX=	.zip
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# Conditional
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	:scummvm->=0.5.1:games/scummvm

WRKDIST=	${WRKDIR}/sky-cd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bass
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bass
	${INSTALL_DATA} ${WRKBUILD}/sky.{dnr,dsk} ${PREFIX}/share/bass
	${INSTALL_DATA} ${WRKBUILD}/readme.txt ${PREFIX}/share/doc/bass

.include <bsd.port.mk>
