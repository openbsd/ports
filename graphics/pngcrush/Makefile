# $OpenBSD: Makefile,v 1.22 2001/07/29 19:43:30 brad Exp $
# $FreeBSD: Makefile,v 1.1 1999/12/22 14:53:53 jedgar Exp $

COMMENT=	"optimizer for PNG files"

DISTNAME=	pngcrush-1.5.6
CATEGORIES=	graphics
NEED_VERSION=	1.413
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
