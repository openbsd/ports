# $OpenBSD: Makefile,v 1.14 2007/09/15 20:04:24 merdely Exp $

COMMENT=	Swiss railway clock emulation

DISTNAME=	swisswatch-0.06
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		ICE SM X11 Xext Xmu Xt c m

USE_X11=	Yes

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
