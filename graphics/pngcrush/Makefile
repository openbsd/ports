# $OpenBSD: Makefile,v 1.25 2002/10/27 00:03:16 naddy Exp $
# $FreeBSD: Makefile,v 1.1 1999/12/22 14:53:53 jedgar Exp $

COMMENT=	"optimizer for PNG files"

DISTNAME=	pngcrush-1.5.8
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pmt/}

HOMEPAGE=	http://pmt.sourceforge.net/pngcrush/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -Wall -I."

MAKE_FILE=	Makefile.gcc

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
