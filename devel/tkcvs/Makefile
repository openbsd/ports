# $OpenBSD: Makefile,v 1.7 2000/02/15 05:04:15 turan Exp $

DISTNAME=	tkcvs-6.0
CATEGORIES=	devel

MAINTAINER=	todd@OpenBSD.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	http://www.neosoft.com/tcl/ftparchive/sorted/packages-7.6/apps/tkcvs-6.0/

RUN_DEPENDS=	/usr/local/bin/wish8.0:${PORTSDIR}/x11/tk80

NO_BUILD=	yes
NO_CONFIGURE=	yes

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
