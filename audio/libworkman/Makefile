# $OpenBSD: Makefile,v 1.10 2005/12/23 16:57:17 espie Exp $

COMMENT=		'multi-platform CD-Player library'

DISTNAME=		libworkman-1999-06-20
PKGNAME=		libworkman-1.4
SHARED_LIBS=		workman	1.4
CATEGORIES=		audio

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake
MAKE_FLAGS=		WM_LIBVER=${LIBworkman_VERSION}
FAKE_FLAGS=		${MAKE_FLAGS} DESTDIR=${WRKINST}

WRKDIST=		${WRKDIR}/libworkman

.include <bsd.port.mk>
