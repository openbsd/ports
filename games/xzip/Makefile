# $OpenBSD: Makefile,v 1.15 2014/01/01 20:46:28 naddy Exp $

COMMENT=	z-code interpreter for X11 (Infocom game format)

DISTNAME=	xzip182
PKGNAME=	xzip-1.8.2
REVISION =	0
CATEGORIES=     games x11

HOMEPAGE=	http://www.eblong.com/zarf/xzip.html

MAINTAINER=	Carsten Ilchmann <ci2@gmx.net>

# usage restriction and licensing of files by Mark Howell unclear
# read xzip(6)
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		X11 c pthread-stubs xcb

MASTER_SITES=	http://www.eblong.com/zarf/ftp/
EXTRACT_SUFX=	.tar.Z

MAKE_FLAGS=	CFLAGS="${CFLAGS}" XLIB="${X11BASE}/lib" LDFLAGS="${LDFLAGS}"
WRKDIST=	${WRKDIR}/xzip

ALL_TARGET=	xzip

CFLAGS+=	-DAUTO_END_MODE -I${X11BASE}/include

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xzip ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xzip.1 ${PREFIX}/man/man6/xzip.6

.include <bsd.port.mk>
