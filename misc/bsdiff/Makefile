# $OpenBSD: Makefile,v 1.1.1.1 2004/04/10 21:21:27 jolan Exp $

COMMENT=	"binary patch tools"
DISTNAME=	bsdiff-4.1
CATEGORIES=	misc devel
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.daemonology.net/bsdiff/

MAINTAINER=	Michael van der Westhuizen <michael@skanky.homeunix.net>

# Conditional BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	BZIP2=${LOCALBASE}/bin/bzip2
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
NO_REGRESS=	Yes

RUN_DEPENDS=	:bzip2-*:archivers/bzip2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bsdiff
	${INSTALL_DATA} ${WRKBUILD}/LICENSE ${PREFIX}/share/doc/bsdiff

.include <bsd.port.mk>
