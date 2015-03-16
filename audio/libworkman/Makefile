# $OpenBSD: Makefile,v 1.16 2015/03/16 18:07:36 naddy Exp $

COMMENT=		multi-platform CD-Player library

DISTNAME=		libworkman-1999-06-20
PKGNAME=		libworkman-1.4
REVISION=		1
SHARED_LIBS=		workman	1.4
CATEGORIES=		audio

# GPL
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=		Yes
CONFIGURE_STYLE=	imake
MAKE_FLAGS=		WM_LIBVER=${LIBworkman_VERSION}

WRKDIST=		${WRKDIR}/libworkman

.include <bsd.port.mk>
