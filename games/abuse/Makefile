# $OpenBSD: Makefile,v 1.26 2005/11/01 14:27:39 niallo Exp $

COMMENT=	"full color 320x200 arcade quality platform shooter"

DISTNAME=	abuse-2.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=abuse/}
MASTER_SITES0=	ftp://ftp.NetBSD.ORG/pub/NetBSD/packages/distfiles/
DISTFILES=	${DISTNAME}.tar.gz abuse_data.tar.gz:0


HOMEPAGE=	http://www.crack.com/games/abuse/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	"unclear"
PERMIT_PACKAGE_FTP=	"unclear"
PERMIT_DISTFILES_CDROM=	"unclear"
PERMIT_DISTFILES_FTP=	"unclear"
WANTLIB=		X11 Xext c m stdc++

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"Does not work on SPARC"
.endif

.if ${MACHINE_ARCH} == "vax"
BROKEN=		"gmake loops forever"
.endif

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu dest

post-extract:
	@mv ${WRKDIR}/addon ${WRKDIR}/art ${WRKDIR}/levels ${WRKDIR}/lisp \
	${WRKDIR}/music ${WRKDIR}/sfx ${WRKSRC}/abuse

.include <bsd.port.mk>
