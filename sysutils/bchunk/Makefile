# $OpenBSD: Makefile,v 1.1.1.1 2001/12/14 01:38:08 naddy Exp $
# $NetBSD: Makefile,v 1.4 2001/11/04 03:28:45 tv Exp $

COMMENT=	".bin/.cue to .iso CD image converter"

DISTNAME=	bchunk-1.1.1
CATEGORIES=	sysutils
NEED_VERSION=	1.500
HOMEPAGE=	http://hes.iki.fi/bchunk/

MAINTAINER=	Dave Watson <dave@elephantride.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LD="${CC}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bchunk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bchunk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
