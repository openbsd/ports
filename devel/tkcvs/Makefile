# $OpenBSD: Makefile,v 1.3 1998/10/08 18:51:10 marc Exp $
#

DISTNAME=	tkcvs-6.0
CATEGORIES=	devel

BROKEN=		"code moved and newer version available"

MAINTAINER=	todd@OpenBSD.org

MASTER_SITES=	ftp://ftp.neosoft.com/pub/tcl/sorted/apps/

RUN_DEPENDS=	/usr/local/bin/wish8.0:${PORTSDIR}/x11/tk80

NO_BUILD=	yes
NO_CONFIGURE=	yes

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
