# $OpenBSD: Makefile,v 1.4 1998/12/17 21:15:34 niklas Exp $
#

DISTNAME=	tkcvs-6.0
CATEGORIES=	devel

MAINTAINER=	todd@OpenBSD.org

MASTER_SITES=	http://www.neosoft.com/tcl/ftparchive/sorted/packages-7.6/apps/tkcvs-6.0/

RUN_DEPENDS=	/usr/local/bin/wish8.0:${PORTSDIR}/x11/tk80

NO_BUILD=	yes
NO_CONFIGURE=	yes

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
