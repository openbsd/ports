# OpenBSD makefile for:	xsoldier
# Version required:	0.96
# Date created:		December 6, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 23:26:52 marc Exp $
#

DISTNAME=	xsoldier-0.96
CATEGORIES=	games x11
MASTER_SITES=	http://www.educ.info.kanagawa-u.ac.jp/~s945750/xsoldier/

MAINTAINER=	angelos@openbsd.org

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

.include <bsd.port.mk>
