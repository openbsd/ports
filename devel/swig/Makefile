# $OpenBSD: Makefile,v 1.8 2000/02/15 05:04:15 turan Exp $

BROKEN=		c++ syntax errors

DISTNAME=	swig1.1
PKGNAME=	swig-1.1
CATEGORIES=	devel

#BROKEN=	"newer version available"

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.cs.utah.edu/pub/beazley/SWIG/
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/SWIG1.1
GNU_CONFIGURE=	yes

post-build:
	@cd ${WRKSRC}; make runtime

.include <bsd.port.mk>
