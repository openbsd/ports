# OpenBSD makefile for:	xonix
# Version required:	1.4
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 23:26:50 marc Exp $
#

DISTNAME=	xonix-1.4
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.inf.tu-dresden.de/pub/people/wunsch/xonix/

MAINTAINER=	angelos@openbsd.org

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=      yes

.include <bsd.port.mk>
