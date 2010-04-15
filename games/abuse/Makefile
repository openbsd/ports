# $OpenBSD: Makefile,v 1.31 2010/04/15 18:25:59 jasper Exp $

BROKEN-sparc=	Does not work on SPARC
BROKEN-vax=	gmake loops forever

COMMENT=	full color 320x200 arcade quality platform shooter

DISTNAME=	abuse-2.0
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=non-gnu/abuse/}
MASTER_SITES0=	ftp://ftp.NetBSD.ORG/pub/NetBSD/packages/distfiles/
DISTFILES=	${DISTNAME}.tar.gz abuse_data.tar.gz:0

PERMIT_PACKAGE_CDROM=	unclear
PERMIT_PACKAGE_FTP=	unclear
PERMIT_DISTFILES_CDROM=	unclear
PERMIT_DISTFILES_FTP=	unclear
WANTLIB=		X11 Xext c m pthread-stubs stdc++ xcb

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu dest

post-extract:
	@mv ${WRKDIR}/addon ${WRKDIR}/art ${WRKDIR}/levels ${WRKDIR}/lisp \
	${WRKDIR}/music ${WRKDIR}/sfx ${WRKSRC}/abuse

.include <bsd.port.mk>
