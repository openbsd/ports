# $OpenBSD: Makefile,v 1.14 2000/10/22 14:03:09 espie Exp $

DISTNAME=	tkcvs-6.0
CATEGORIES=	devel
NEED_VERSION=	1.230

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.neosoft.com/tcl/ftparchive/sorted/packages-7.6/apps/tkcvs-6.0/

RUN_DEPENDS=	/usr/local/bin/wish8.3::x11/tk/8.3 

NO_BUILD=	Yes

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
