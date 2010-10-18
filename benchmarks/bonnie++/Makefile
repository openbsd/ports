# $OpenBSD: Makefile,v 1.5 2010/10/18 16:57:46 espie Exp $

COMMENT=	enhanced performance test of filesystem I/O

DISTNAME=	bonnie++-1.03a
CATEGORIES=	benchmarks

HOMEPAGE=	http://www.coker.com.au/bonnie++/
MASTER_SITES=	${HOMEPAGE} \
		ftp://gd.tuwien.ac.at/opsys/linux/sf/b/bonnie/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Martin Reindl <martin@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

NO_REGRESS=	Yes
USE_GMAKE=      Yes
USE_GROFF =	Yes
MAKE_FLAGS=	CXX="${CXX} ${CXXFLAGS}"

CONFIGURE_STYLE=gnu dest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bonnie++
	${INSTALL_DATA} ${WRKSRC}/readme.html \
		${PREFIX}/share/doc/bonnie++

.include <bsd.port.mk>
