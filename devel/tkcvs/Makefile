# OpenBSD makefile for:	tkcvs
# Version required:	6.0
# Date created:		15 June 1998
# Whom:			todd@OpenBSD.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/15 05:35:00 todd Exp $
#

NO_BUILD=	yes
NO_CONFIGURE=	yes

DISTNAME=	tkcvs-6.0
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.neosoft.com/pub/tcl/code/

MAINTAINER=	todd@OpenBSD.org


RUN_DEPENDS=	/usr/local/bin/wish8.0:${PORTSDIR}/x11/tk80

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
