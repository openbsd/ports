# OpenBSD makefile for: xchomp
# Version required:     pl1
# Date created:         May 19 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:27:33 angelos Exp $
#

DISTNAME=       xchomp-pl1
CATEGORIES=	games
MASTER_SITES=
MASTER_SITE_SUBDIR=	../../R5contrib
#
# Original sources in multi-part compressed shell archive
#
#DISTFILES=	part01.Z part02.Z part03.Z part04.Z part05.Z patch1.Z
#MASTER_SITES=	ftp://ftp.wustl.edu/usenet/comp.sources.x/volume06

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/xchomp
USE_IMAKE=	yes
NO_INSTALL_MANPAGES= yes

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

.include <bsd.port.mk>
