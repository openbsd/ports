# $OpenBSD: Makefile,v 1.10 2000/04/10 16:30:35 brad Exp $
# $FreeBSD: Makefile,v 1.1 1999/12/22 14:53:53 jedgar Exp $

DISTNAME=	pngcrush-1.4.1
CATEGORIES=	graphics
NEED_VERSION=	1.234
MASTER_SITES=	http://download.sourceforge.net/pmt/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

NO_CONFIGURE=	Yes

MAKE_FILE=	Makefile.gcc
MAKE_FLAGS=	CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -Wall"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
