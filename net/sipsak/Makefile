# $OpenBSD: Makefile,v 1.2 2004/12/16 00:31:25 alek Exp $

COMMENT=	"SIP swiss army knife"

DISTNAME=	sipsak-0.7.7
CATEGORIES=	net

HOMEPAGE=	http://sipsak.berlios.de/
MASTER_SITES=	http://download.berlios.de/sipsak/

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c crypto ssl 

MAKE_FLAGS=	CC='${CC}' CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sipsak ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sipsak.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
