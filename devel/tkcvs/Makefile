# OpenBSD makefile for:	tkcvs
# Version required:	6.0
# Date created:		15 June 1998
# Whom:			todd@OpenBSD.org
#
# $OpenBSD: Makefile,v 1.2 1998/01/01 00:28:39 marc Exp $
#

BROKEN=		"code moved and newer version available"
NO_BUILD=	yes
NO_CONFIGURE=	yes

DISTNAME=	tkcvs-6.0
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.neosoft.com/pub/tcl/sorted/apps/

MAINTAINER=	todd@OpenBSD.org


RUN_DEPENDS=	/usr/local/bin/wish8.0:${PORTSDIR}/x11/tk80

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
