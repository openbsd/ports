# OpenBSD makefile for:	lyx
# Version required:	0.12.0
# Date created:		July 12 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1999/02/23 06:02:33 turan Exp $
#

DISTNAME=	lyx-1.0.0
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.via.ecp.fr/pub/lyx/stable/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	latex:${PORTSDIR}/print/teTeX
RUN_DEPENDS=	latex:${PORTSDIR}/print/teTeX \
		ispell:${PORTSDIR}/textproc/ispell
LIB_DEPENDS=	xforms\\.0\\.:${PORTSDIR}/x11/xforms \
		Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

GNU_CONFIGURE=	yes
STRIP=
CONFIGURE_ARGS+=--with-extra-lib=${X11BASE}/lib --with-extra-inc="${X11BASE}/include ${X11BASE}/include/X11"
MAN1=		lyx.1

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
