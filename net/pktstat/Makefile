# $OpenBSD: Makefile,v 1.2 2004/02/21 00:01:39 couderc Exp $

COMMENT=		"network traffic viewer"

VERSION=		1.7.3b
DISTNAME=		pktstat-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.dart.net.au/users/leonard/software/pktstat/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MAKE_FILE=		BSDmakefile

MAKE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pktstat ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/pktstat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
