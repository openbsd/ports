# OpenBSD makefile for:	xfaces-3.3
# Version required:	1.6.1
# Date created:		December 4, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/05 03:28:40 angelos Exp $
#

DISTNAME=	xfaces-3.3
CATEGORIES=	mail
# xfaces-sounds.tar.gz only in LOCAL_PORTS
MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/xfaces/ \
		ftp://odie.physik2.uni-rostock.de/pub/ \
		${MASTER_SITE_LOCAL}
DISTFILES=	${DISTNAME}.tar.Z xfaces-sounds.tar.gz

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	compface\\.1\\.:${PORTSDIR}/mail/faces \
		Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_IMAKE=	YES

pre-configure:
	@ln -sf ../sounds ${WRKSRC}

pre-install:
	@${MKDIR} ${LOCALBASE}/share/sounds
	@${MKDIR} ${X11BASE}/include/X11/pixmaps

.include <bsd.port.mk>
