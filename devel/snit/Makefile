# $OpenBSD: Makefile,v 1.4 2004/02/03 07:20:42 sturm Exp $

COMMENT=		"simple object oriented framework for Tcl"

VERSION=		0.7
PKGNAME=		snit-${VERSION}
DISTNAME=		snit${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.wjduquette.com/snit/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		::lang/tcl/8.4

WRKSRC=			${WRKDIR}/snit
NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/snit
	${INSTALL_DATA} ${WRKSRC}/* ${PREFIX}/lib/snit

.include <bsd.port.mk>
