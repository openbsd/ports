# New ports collection makefile for:	nedit
# Version required:			5.0.2
# Date created:				6 May 1998
#
# Whom:	Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.3 1998/07/16 03:40:48 marc Exp $
# FreeBSD: Makefile,v 1.10 1998/03/28 14:36:34 steve Exp
#

DISTNAME=	nedit-5.0.2
CATEGORIES=	editors x11
MASTER_SITES=	ftp://ftp.fnal.gov/KITS/pub/nedit/v5_0_2/ \
		ftp://ftp.fnal.gov/KITS/pub/nedit/v5_0_2/contrib/
DISTFILES=	nedit_source.tar.gz nedit.app-defaults

MAINTAINER=	form@vs.itam.nsc.ru

LIB_DEPENDS=	Xm\\.1\\.:${PORTSDIR}/x11/lesstif
OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS+=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_X11=	yes
NO_WRKSUBDIR=	yes
EXTRACT_ONLY=	nedit_source.tar.gz

ALL_TARGET=	openbsd_nedit

post-extract:
	@${CP} ${DISTDIR}/nedit.app-defaults ${WRKSRC}/NEdit.ad

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/source/nedit ${PREFIX}/bin
	@${INSTALL_PROGRAM} ${WRKSRC}/source/nc ${PREFIX}/bin/ncl
	@${INSTALL_MAN} ${WRKSRC}/nedit.man ${PREFIX}/man/man1/nedit.1
	@${INSTALL_MAN} ${WRKSRC}/nc.man ${PREFIX}/man/man1/ncl.1
	@${INSTALL_DATA} ${WRKSRC}/NEdit.ad ${PREFIX}/lib/X11/app-defaults/NEdit
	@${INSTALL} -d ${PREFIX}/share/doc/nedit
	@${INSTALL_DATA} ${WRKSRC}/nedit.doc ${PREFIX}/share/doc/nedit

.include <bsd.port.mk>
