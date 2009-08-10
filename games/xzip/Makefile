# $OpenBSD: Makefile,v 1.9 2009/08/10 06:31:43 kili Exp $
# $NetBSD: Makefile,v 1.4 1999/01/30 23:18:49 agc Exp $
# Original from: Andrew Plotkin, Mark Howell

COMMENT=	z-code interpreter for X11 (Infocom game format)

DISTNAME=	xzip182
PKGNAME=	xzip-1.8.2p0
CATEGORIES=     games x11

HOMEPAGE=	http://www.eblong.com/zarf/xzip.html

MAINTAINER=	Carsten Ilchmann <ci2@gmx.net>

# usage restriction and licensing of files by Mark Howell unclear
# read xzip(6)
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		X11 c pthread-stubs xcb

USE_X11=	Yes

MASTER_SITES=	http://www.eblong.com/zarf/ftp/
EXTRACT_SUFX=	.tar.Z

MAKE_FLAGS=	CFLAGS="${CFLAGS}" XLIB="${X11BASE}/lib" LDFLAGS="${LDFLAGS}"
WRKDIST=	${WRKDIR}/xzip

ALL_TARGET=	xzip

CFLAGS+=	-DAUTO_END_MODE -I${X11BASE}/include

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xzip ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xzip.1 ${PREFIX}/man/man6/xzip.6

.include <bsd.port.mk>
