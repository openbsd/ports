# $OpenBSD: Makefile,v 1.18 2001/11/13 22:13:23 espie Exp $

COMMENT=	"graphical frontend to CVS"
DISTNAME=	tkcvs-6.0
CATEGORIES=	devel
NEED_VERSION=	1.496

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.neosoft.com/tcl/ftparchive/sorted/packages-7.6/apps/tkcvs-6.0/

BUILD_DEPENDS=	::x11/tk/8.3 
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes

do-install:
	cd $(WRKSRC)/tkcvs; ./doinstall

.include <bsd.port.mk>
