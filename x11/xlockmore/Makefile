# OpenBSD makefile for:	xlockmore
# Version required:     4.08.2
# Date created:		18 March 1998
# Whom:			Todd Fries
#
# $OpenBSD: Makefile,v 1.4 2000/04/09 17:38:50 espie Exp $
#

DISTNAME=       xlockmore-4.08.2
CATEGORIES=	x11
FAKE=No

COMES_WITH=	2.3
MIRROR_DISTFILE=no

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

MAINTAINER=	todd@OpenBSD.ORG

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --without-gl --without-motif --without-sx --without-mesagl \
		--without-editres --without-dtsaver --without-rplay \
		--without-nas --enable-mouse-motion
USE_X11=	yes
MAN1=		xlock.1

.include <bsd.port.mk>
