# $OpenBSD: Makefile,v 1.6 2000/02/12 08:41:08 turan Exp $

DISTNAME=	tkcvs-6.0
CATEGORIES=	devel

MAINTAINER=	todd@OpenBSD.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	http://www.neosoft.com/tcl/ftparchive/sorted/packages-7.6/apps/tkcvs-6.0/

RUN_DEPENDS=	/usr/local/bin/wish8.0:${PORTSDIR}/x11/tk80

NO_BUILD=	yes
NO_CONFIGURE=	yes

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
