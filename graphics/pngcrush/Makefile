# $OpenBSD: Makefile,v 1.15 2000/07/23 18:23:32 brad Exp $
# $FreeBSD: Makefile,v 1.1 1999/12/22 14:53:53 jedgar Exp $

DISTNAME=	pngcrush-1.4.8
CATEGORIES=	graphics
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= pmt

HOMEPAGE=	http://pmt.sourceforge.net/pngcrush/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -Wall -I."

MAKE_FILE=	Makefile.gcc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
