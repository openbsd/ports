# $OpenBSD: Makefile,v 1.14 2012/12/13 16:34:47 naddy Exp $

COMMENT=		multi-platform CD-Player library

DISTNAME=		libworkman-1999-06-20
PKGNAME=		libworkman-1.4
REVISION=		0
SHARED_LIBS=		workman	1.4
CATEGORIES=		audio

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake
MAKE_FLAGS=		WM_LIBVER=${LIBworkman_VERSION}

WRKDIST=		${WRKDIR}/libworkman

.include <bsd.port.mk>
