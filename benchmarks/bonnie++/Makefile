# $OpenBSD: Makefile,v 1.8 2013/03/10 23:04:44 espie Exp $

COMMENT=	enhanced performance test of filesystem I/O

DISTNAME=	bonnie++-1.96
REVISION=	0
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.coker.com.au/bonnie++/experimental/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.coker.com.au/bonnie++/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread stdc++

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf dest
AUTOCONF_VERSION= 2.61

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bonnie++
	${INSTALL_DATA} ${WRKSRC}/readme.html \
		${PREFIX}/share/doc/bonnie++

.include <bsd.port.mk>
