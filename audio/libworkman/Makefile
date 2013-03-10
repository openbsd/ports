# $OpenBSD: Makefile,v 1.15 2013/03/10 22:55:03 espie Exp $

COMMENT=		multi-platform CD-Player library

DISTNAME=		libworkman-1999-06-20
PKGNAME=		libworkman-1.4
REVISION=		0
SHARED_LIBS=		workman	1.4
CATEGORIES=		audio

# GPL
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=		Yes
CONFIGURE_STYLE=	imake
MAKE_FLAGS=		WM_LIBVER=${LIBworkman_VERSION}

WRKDIST=		${WRKDIR}/libworkman

.include <bsd.port.mk>
