# $OpenBSD: Makefile,v 1.2 1998/11/09 01:50:00 marc Exp $
#

DISTNAME=       pacman10
PKGNAME=	xpacman-1.0
CATEGORIES=	games

#BROKEN=	"what's the diff between pacman.zip and pacman10.tgz?"
#		The .tgz file is a week newer.

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.nvg.unit.no/pub/pacman/
EXTRACT_SUFX=	.zip
EXTRACT_CMD=	unzip
EXTRACT_BEFORE_ARGS= -x

BUILD_DEPENDS=	unzip:${PORTSDIR}/archivers/unzip

USE_IMAKE=      yes
NO_WRKSUBDIR=	Does not unpack into subdir.

.include <bsd.port.mk>
