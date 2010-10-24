# $OpenBSD: Makefile,v 1.18 2010/10/24 21:15:34 ajacoutot Exp $

COMMENT=	Swiss railway clock emulation

DISTNAME=	swisswatch-0.06
REVISION=	0
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m

USE_GROFF =	Yes

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
