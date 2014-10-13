# $OpenBSD: Makefile,v 1.11 2014/10/13 19:10:44 sthen Exp $

# -Winit-self
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	enhanced performance test of filesystem I/O

DISTNAME=	bonnie++-1.97
REVISION=	0
WRKDIST=	${WRKDIR}/${DISTNAME}.1
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.coker.com.au/bonnie++/experimental/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.coker.com.au/bonnie++/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread stdc++

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf dest
AUTOCONF_VERSION= 2.67

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bonnie++
	${INSTALL_DATA} ${WRKSRC}/readme.html \
		${PREFIX}/share/doc/bonnie++

.include <bsd.port.mk>
