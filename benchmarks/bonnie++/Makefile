# $OpenBSD: Makefile,v 1.6 2011/11/13 18:23:24 sthen Exp $

COMMENT=	enhanced performance test of filesystem I/O

DISTNAME=	bonnie++-1.96
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.coker.com.au/bonnie++/experimental/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.coker.com.au/bonnie++/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m pthread stdc++

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf dest
AUTOCONF_VERSION= 2.61

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bonnie++
	${INSTALL_DATA} ${WRKSRC}/readme.html \
		${PREFIX}/share/doc/bonnie++

.include <bsd.port.mk>
