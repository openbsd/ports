# $OpenBSD: Makefile,v 1.8 2000/03/05 18:30:26 espie Exp $

DISTNAME=	tkcvs-6.0
CATEGORIES=	devel
NEED_VERSION=	1.223

MAINTAINER=	todd@OpenBSD.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.neosoft.com/tcl/ftparchive/sorted/packages-7.6/apps/tkcvs-6.0/

RUN_DEPENDS=	/usr/local/bin/wish8.0:x11/tk80

NO_BUILD=	Yes
NO_CONFIGURE=	Yes

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
