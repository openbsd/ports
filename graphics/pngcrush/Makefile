# $OpenBSD: Makefile,v 1.19 2000/12/25 22:04:16 brad Exp $
# $FreeBSD: Makefile,v 1.1 1999/12/22 14:53:53 jedgar Exp $

DISTNAME=	pngcrush-1.5.3
CATEGORIES=	graphics
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= pmt

HOMEPAGE=	http://pmt.sourceforge.net/pngcrush/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -Wall -I."

MAKE_FILE=	Makefile.gcc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
