# New ports collection makefile for:   xteddy
# Version required:    1.0
# Date created:        3 June 1998
# Whom:                Eckart "Isegrim" Hofmann
# Adapted for OpenBSD: Felix Schroeter <felix@mamba.pond.sub.org>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/23 01:08:03 marc Exp $
#

DISTNAME=	xteddy-1.0
CATEGORIES=	games

#MAINTAINER=	Isegrim@Wunder-Nett.org
MAINTAINER=	felix@mamba.pond.sub.org

MASTER_SITES=	ftp://ftp.leo.org:/pub/comp/usenet/comp.sources.x/xteddy/

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS+=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=	yes

post-install:
		strip ${PREFIX}/bin/xteddy

.include <bsd.port.mk>
