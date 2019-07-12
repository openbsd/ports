# $OpenBSD: Makefile,v 1.18 2019/07/12 20:43:35 sthen Exp $

COMMENT=		multi-platform CD-Player library

DISTNAME=		libworkman-1999-06-20
PKGNAME=		libworkman-1.4
REVISION=		1
SHARED_LIBS=		workman	1.4
CATEGORIES=		audio
FIX_EXTRACT_PERMISSIONS=Yes

# GPL
PERMIT_PACKAGE=	Yes

NO_TEST=		Yes
CONFIGURE_STYLE=	imake
MAKE_FLAGS=		WM_LIBVER=${LIBworkman_VERSION}

WRKDIST=		${WRKDIR}/libworkman

.include <bsd.port.mk>
