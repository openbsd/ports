# $OpenBSD: Makefile,v 1.28 2018/07/15 08:36:39 espie Exp $

COMMENT=	mold spreading over your X11 screen

DISTNAME=	xmold
PKGNAME=	xmold-1.0
REVISION=	3
CATEGORIES=	x11

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	X11 Xau Xdmcp Xext c m 

MASTER_SITES=	${MASTER_SITE_FREEBSD}

MAKE_FLAGS=	CC="${CC}" \
		CCOPTIONS="${CFLAGS}"

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
