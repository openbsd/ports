# New ports collection makefile for:	nedit
# Version required:			5.0.2
# Date created:				6 May 1998
#
# Whom:	Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/06 07:03:18 form Exp $
# FreeBSD: Makefile,v 1.10 1998/03/28 14:36:34 steve Exp
#

DISTNAME=	nedit-5.0.2
CATEGORIES=	editors x11
MASTER_SITES=	ftp://ftp.fnal.gov/KITS/pub/nedit/v5_0_2/ \
		ftp://ftp.fnal.gov/KITS/pub/nedit/v5_0_2/contrib/
DISTFILES=	nedit_source.tar.gz nedit.app-defaults

MAINTAINER=	form@vs.itam.nsc.ru

OS_RELEASE!=	uname -r
OS_NO_XPM=	2.2
.if ( ${OS_RELEASE} <= ${OS_NO_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

REQUIRES_MOTIF=	yes
USE_X11=	yes
NO_WRKSUBDIR=	yes
EXTRACT_ONLY=	nedit_source.tar.gz
MAN1=		nedit.1 nc.1

post-extract:
	${CP} ${DISTDIR}/nedit.app-defaults ${WRKSRC}/NEdit.ad

.include <bsd.port.mk>
