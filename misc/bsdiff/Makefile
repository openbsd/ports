# $OpenBSD: Makefile,v 1.4 2007/09/15 23:54:16 merdely Exp $

COMMENT=	binary patch tools
DISTNAME=	bsdiff-4.2
CATEGORIES=	misc devel
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.daemonology.net/bsdiff/

MAINTAINER=	Michael van der Westhuizen <michael@skanky.homeunix.net>

# Conditional BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	BZIP2=${LOCALBASE}/bin/bzip2 \
		CC='${CC}'

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
NO_REGRESS=	Yes

RUN_DEPENDS=	:bzip2-*:archivers/bzip2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bsdiff
	${INSTALL_DATA} ${WRKBUILD}/LICENSE ${PREFIX}/share/doc/bsdiff

.include <bsd.port.mk>
