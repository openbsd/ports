# OpenBSD makefile for: xpacman
# Version required:     1.0
# Date created:         May 19 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 01:34:14 angelos Exp $
#

DISTNAME=       pacman10
PKGNAME=	xpacman-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.nvg.unit.no/pub/pacman/
EXTRACT_SUFX=	.zip

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	unzip:${PORTSDIR}/archivers/unzip

NO_WRKSUBDIR=	Does not unpack into subdir.
EXTRACT_CMD=	unzip
EXTRACT_BEFORE_ARGS= -x
USE_IMAKE=      yes

.include <bsd.port.mk>
