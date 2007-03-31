# $OpenBSD: Makefile,v 1.2 2007/03/31 15:32:20 sturm Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	"change resolution on available vbios modes for i8x5/9x5"

DISTNAME=	915resolution-0.5.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

HOMEPAGE=	http://www.geocities.com/stomljen/

MAINTAINER=	Ben Lovett <ben@tilderoot.com>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

pre-build:
	cd ${WRKSRC} && make clean

do-install:
	cd ${WRKBUILD} && \
		${INSTALL_PROGRAM} 915resolution ${PREFIX}/sbin; \
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/915resolution; \
		${INSTALL_DATA} README.txt ${PREFIX}/share/doc/915resolution

.include <bsd.port.mk>
