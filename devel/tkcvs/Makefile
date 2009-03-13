# $OpenBSD: Makefile,v 1.25 2009/03/13 13:13:44 sthen Exp $

COMMENT=	graphical frontend to CVS
DISTNAME=	tkcvs-6.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.neosoft.com/tcl/ftparchive/sorted/packages-7.6/apps/tkcvs-6.0/

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
