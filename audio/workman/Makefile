# $OpenBSD: Makefile,v 1.30 2009/08/10 06:29:52 kili Exp $

COMMENT=	OpenLook-based CD player
DISTNAME=	WorkMan-1.3a
PKGNAME=	${DISTNAME:L}p1
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/WorkMan/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c pthread-stubs xcb

LIB_DEPENDS=	xview.>=3.2,olgx.>=3.2::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

CONFIGURE_STYLE=imake
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

WRKDIST=	${WRKDIR}/workman

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
