# $OpenBSD: Makefile,v 1.2 2000/12/08 15:24:40 kevlo Exp $
# $NetBSD: Makefile,v 1.4 1999/01/30 23:18:49 agc Exp $
# Original from: Andrew Plotkin, Mark Howell

DISTNAME=	xzip182
PKGNAME=	xzip-1.8.2
CATEGORIES=     games x11
NEED_VERSION=	1.341

HOMEPAGE=	http://www.eblong.com/zarf/xzip.html

MAINTAINER=	Carsten Ilchmann <ci2@gmx.net>

# usage restriction and licensing of files by Mark Howell unclear
# read xzip(6)
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=	http://www.eblong.com/zarf/ftp/
EXTRACT_SUFX=	.tar.Z

MAKE_FLAGS=	CFLAGS="${CFLAGS}" XLIB="${X11BASE}/lib" LDFLAGS="${LDFLAGS}"
WRKDIST=	${WRKDIR}/xzip

ALL_TARGET=	xzip

CFLAGS+=	-DAUTO_END_MODE -I${X11BASE}/include

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xzip ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xzip.1 ${PREFIX}/man/man6/xzip.6

.include <bsd.port.mk>
