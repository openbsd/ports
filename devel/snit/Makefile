# $OpenBSD: Makefile,v 1.8 2008/10/28 13:12:29 steven Exp $

COMMENT=		simple object oriented framework for Tcl

VERSION=		0.7
PKGNAME=		snit-${VERSION}p1
DISTNAME=		snit${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.wjduquette.com/snit/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MODTCL_VERSION=		8.4
MODULES=		lang/tcl
RUN_DEPENDS=		${MODTCL_RUN_DEPENDS}

WRKSRC=			${WRKDIR}/snit
NO_BUILD=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/snit
	${INSTALL_DATA} ${WRKSRC}/* ${PREFIX}/lib/snit

do-regress:
	cd ${WRKSRC} && ${MODTCL_BIN} snit.test

.include <bsd.port.mk>
