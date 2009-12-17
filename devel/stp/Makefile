# $OpenBSD: Makefile,v 1.1.1.1 2009/12/17 09:43:28 kevlo Exp $

COMMENT=	decision procedure for bit-vectors and arrays

V=		0.1
DISTNAME=	stp-ver-${V}-11-18-2008
PKGNAME=	stp-${V}

CATEGORIES=	devel

HOMEPAGE=	http://sites.google.com/site/stpfastprover/STP-Fast-Prover

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# MIT license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stp-fast-prover/}
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	::devel/bison

MAKE_ENV=	CXX="${CXX}"

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple

WRKDIST=	${WRKDIR}/${DISTNAME}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/stp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/stp
	${INSTALL_PROGRAM} ${WRKSRC}/bin/stp ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lib/libstp.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/c_interface/*.h ${PREFIX}/include/stp
	${INSTALL_DATA} ${WRKSRC}/PAPERS/*.pdf ${PREFIX}/share/doc/stp

.include <bsd.port.mk>
