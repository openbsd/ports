# OpenBSD makefile for: xcopilot
# Version required:     0.4
# Date created:         August 31, 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/09/01 00:00:43 angelos Exp $
#

DISTNAME=       xcopilot-v0.4
PKGNAME=	xcopilot-0.4.8
CATEGORIES=     emulators pilot
MASTER_SITES=   ftp://uiarchive.cso.uiuc.edu/pub/systems/PalmOS/

PATCH_SITES=	http://www.isaac.cs.berkeley.edu/pilot/
PATCHFILES=	xcopilot-v0.4-iang8.diff
PATCH_DIST_STRIP= -p1

MAINTAINER=     angelos@openbsd.org

LIB_DEPENDS=    Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_X_PREFIX=	yes

.include <bsd.port.mk>
